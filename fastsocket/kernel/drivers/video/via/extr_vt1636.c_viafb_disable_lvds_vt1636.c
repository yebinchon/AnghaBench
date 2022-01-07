
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lvds_setting_information {int dummy; } ;
struct lvds_chip_information {int output_interface; } ;






 int SR1E ;
 int SR2A ;
 int * VDD_OFF_TBL_VT1636 ;
 int VIASR ;
 int viafb_gpio_i2c_write_mask_lvds (struct lvds_setting_information*,struct lvds_chip_information*,int ) ;
 int viafb_write_reg_mask (int ,int ,int,int) ;

void viafb_disable_lvds_vt1636(struct lvds_setting_information
    *plvds_setting_info,
    struct lvds_chip_information *plvds_chip_info)
{

 viafb_gpio_i2c_write_mask_lvds(plvds_setting_info, plvds_chip_info,
     VDD_OFF_TBL_VT1636[0]);


 switch (plvds_chip_info->output_interface) {
 case 129:
  {
   viafb_write_reg_mask(SR1E, VIASR, 0x00, 0xC0);
   break;
  }

 case 128:
  {
   viafb_write_reg_mask(SR1E, VIASR, 0x00, 0x30);
   break;
  }

 case 130:
  {
   viafb_write_reg_mask(SR2A, VIASR, 0x00, 0x03);
   break;
  }

 case 131:
  {
   viafb_write_reg_mask(SR2A, VIASR, 0x00, 0x0C);
   break;
  }

 }
}
