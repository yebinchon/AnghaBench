
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lvds_setting_information {scalar_t__ LCDDithering; scalar_t__ device_lcd_dualedge; } ;
struct lvds_chip_information {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int * COMMON_INIT_TBL_VT1636 ;
 int * DITHERING_DISABLE_TBL_VT1636 ;
 int * DITHERING_ENABLE_TBL_VT1636 ;
 int * DUAL_CHANNEL_ENABLE_TBL_VT1636 ;
 int * SINGLE_CHANNEL_ENABLE_TBL_VT1636 ;
 int viafb_gpio_i2c_write_mask_lvds (struct lvds_setting_information*,struct lvds_chip_information*,int ) ;

void viafb_init_lvds_vt1636(struct lvds_setting_information
 *plvds_setting_info, struct lvds_chip_information *plvds_chip_info)
{
 int reg_num, i;


 reg_num = ARRAY_SIZE(COMMON_INIT_TBL_VT1636);

 for (i = 0; i < reg_num; i++) {
  viafb_gpio_i2c_write_mask_lvds(plvds_setting_info,
      plvds_chip_info,
      COMMON_INIT_TBL_VT1636[i]);
 }


 if (plvds_setting_info->device_lcd_dualedge) {
  viafb_gpio_i2c_write_mask_lvds(plvds_setting_info,
      plvds_chip_info,
      DUAL_CHANNEL_ENABLE_TBL_VT1636[0]);
 } else {
  viafb_gpio_i2c_write_mask_lvds(plvds_setting_info,
      plvds_chip_info,
      SINGLE_CHANNEL_ENABLE_TBL_VT1636[0]);
 }

 if (plvds_setting_info->LCDDithering) {
  viafb_gpio_i2c_write_mask_lvds(plvds_setting_info,
      plvds_chip_info,
      DITHERING_ENABLE_TBL_VT1636[0]);
 } else {
  viafb_gpio_i2c_write_mask_lvds(plvds_setting_info,
      plvds_chip_info,
      DITHERING_DISABLE_TBL_VT1636[0]);
 }
}
