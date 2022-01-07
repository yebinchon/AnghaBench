
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lvds_setting_information {int dummy; } ;
struct lvds_chip_information {int dummy; } ;
struct VT1636_DPA_SETTING {int CLK_SEL_ST2; int CLK_SEL_ST1; } ;
struct IODATA {int Index; int Mask; int Data; } ;


 int viafb_gpio_i2c_write_mask_lvds (struct lvds_setting_information*,struct lvds_chip_information*,struct IODATA) ;

__attribute__((used)) static void set_dpa_vt1636(struct lvds_setting_information
 *plvds_setting_info, struct lvds_chip_information *plvds_chip_info,
      struct VT1636_DPA_SETTING *p_vt1636_dpa_setting)
{
 struct IODATA io_data;

 io_data.Index = 0x09;
 io_data.Mask = 0x1F;
 io_data.Data = p_vt1636_dpa_setting->CLK_SEL_ST1;
 viafb_gpio_i2c_write_mask_lvds(plvds_setting_info,
  plvds_chip_info, io_data);

 io_data.Index = 0x08;
 io_data.Mask = 0x0F;
 io_data.Data = p_vt1636_dpa_setting->CLK_SEL_ST2;
 viafb_gpio_i2c_write_mask_lvds(plvds_setting_info, plvds_chip_info,
  io_data);
}
