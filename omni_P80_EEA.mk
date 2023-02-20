#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from P80_EEA device
$(call inherit-product, device/teclast/P80_EEA/device.mk)

PRODUCT_DEVICE := P80_EEA
PRODUCT_NAME := omni_P80_EEA
PRODUCT_BRAND := Teclast
PRODUCT_MODEL := P80_EEA
PRODUCT_MANUFACTURER := teclast

PRODUCT_GMS_CLIENTID_BASE := android-along

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ceres_b3-user 11 RP1A.201005.006 androidgroup0320220419 release-keys"

BUILD_FINGERPRINT := Teclast/P80_EEA/P80_EEA:11/RP1A.201005.006/androidgroup0320220419:user/release-keys
