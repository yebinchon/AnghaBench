
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ lvds_chip_name; } ;
struct TYPE_6__ {TYPE_1__* chip_info; int lvds_setting_info; } ;
struct TYPE_5__ {scalar_t__ gfx_chip_name; TYPE_3__ lvds_chip_info; TYPE_3__ lvds_chip_info2; } ;


 int CR6A ;
 int CR6B ;
 int CR79 ;
 int CR91 ;
 scalar_t__ INTEGRATED_LVDS ;
 int SR16 ;
 int SR1E ;
 int SR2A ;
 int SR3D ;
 scalar_t__ UNICHROME_CLE266 ;
 scalar_t__ UNICHROME_CX700 ;
 int VIACR ;
 int VIASR ;
 scalar_t__ VT1636_LVDS ;
 int integrated_lvds_disable (int ,TYPE_3__*) ;
 int lcd_powersequence_off () ;
 scalar_t__ viafb_LCD2_ON ;
 int viafb_disable_lvds_vt1636 (int ,TYPE_3__*) ;
 int viafb_write_reg_mask (int ,int ,int,int) ;
 TYPE_2__* viaparinfo ;

void viafb_lcd_disable(void)
{

 if (viaparinfo->chip_info->gfx_chip_name == UNICHROME_CLE266) {
  lcd_powersequence_off();

  viafb_write_reg_mask(SR1E, VIASR, 0x00, 0x30);
 } else if (viaparinfo->chip_info->gfx_chip_name == UNICHROME_CX700) {
  if (viafb_LCD2_ON
      && (INTEGRATED_LVDS ==
   viaparinfo->chip_info->lvds_chip_info2.lvds_chip_name))
   integrated_lvds_disable(viaparinfo->lvds_setting_info,
    &viaparinfo->chip_info->lvds_chip_info2);
  if (INTEGRATED_LVDS ==
   viaparinfo->chip_info->lvds_chip_info.lvds_chip_name)
   integrated_lvds_disable(viaparinfo->lvds_setting_info,
    &viaparinfo->chip_info->lvds_chip_info);
  if (VT1636_LVDS == viaparinfo->chip_info->
   lvds_chip_info.lvds_chip_name)
   viafb_disable_lvds_vt1636(viaparinfo->lvds_setting_info,
    &viaparinfo->chip_info->lvds_chip_info);
 } else if (VT1636_LVDS ==
 viaparinfo->chip_info->lvds_chip_info.lvds_chip_name) {
  viafb_disable_lvds_vt1636(viaparinfo->lvds_setting_info,
        &viaparinfo->chip_info->lvds_chip_info);
 } else {

  viafb_write_reg_mask(SR2A, VIASR, 0x00, 0x0F);

  viafb_write_reg_mask(SR3D, VIASR, 0x00, 0x20);

  viafb_write_reg_mask(CR91, VIACR, 0x80, 0x80);

  viafb_write_reg_mask(CR6B, VIACR, 0x00, 0x08);
 }


 viafb_write_reg_mask(CR79, VIACR, 0x00, 0x01);

 viafb_write_reg_mask(SR16, VIASR, 0x00, 0x40);

 viafb_write_reg_mask(CR6B, VIACR, 0x00, 0x08);

 viafb_write_reg_mask(CR6A, VIACR, 0x00, 0x80);

}
