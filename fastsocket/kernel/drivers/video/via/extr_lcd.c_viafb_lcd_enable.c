
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ lvds_chip_name; } ;
struct TYPE_9__ {scalar_t__ iga_path; } ;
struct TYPE_8__ {TYPE_3__* lvds_setting_info; TYPE_1__* chip_info; TYPE_3__* lvds_setting_info2; } ;
struct TYPE_7__ {scalar_t__ gfx_chip_name; TYPE_4__ lvds_chip_info; TYPE_4__ lvds_chip_info2; } ;


 int CR6A ;
 int CR91 ;
 int CR97 ;
 int CR99 ;
 scalar_t__ IGA1 ;
 scalar_t__ IGA1_IGA2 ;
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
 int integrated_lvds_enable (TYPE_3__*,TYPE_4__*) ;
 int lcd_powersequence_on () ;
 scalar_t__ viafb_LCD2_ON ;
 int viafb_enable_lvds_vt1636 (TYPE_3__*,TYPE_4__*) ;
 int viafb_write_reg_mask (int ,int ,int,int) ;
 TYPE_2__* viaparinfo ;

void viafb_lcd_enable(void)
{
 if (viaparinfo->chip_info->gfx_chip_name == UNICHROME_CLE266) {

  viafb_write_reg_mask(SR1E, VIASR, 0x30, 0x30);
  lcd_powersequence_on();
 } else if (viaparinfo->chip_info->gfx_chip_name == UNICHROME_CX700) {
  if (viafb_LCD2_ON && (INTEGRATED_LVDS ==
   viaparinfo->chip_info->lvds_chip_info2.lvds_chip_name))
   integrated_lvds_enable(viaparinfo->lvds_setting_info2, &viaparinfo->chip_info->lvds_chip_info2);

  if (INTEGRATED_LVDS ==
   viaparinfo->chip_info->lvds_chip_info.lvds_chip_name)
   integrated_lvds_enable(viaparinfo->lvds_setting_info,
    &viaparinfo->chip_info->lvds_chip_info);
  if (VT1636_LVDS == viaparinfo->chip_info->
   lvds_chip_info.lvds_chip_name)
   viafb_enable_lvds_vt1636(viaparinfo->
   lvds_setting_info, &viaparinfo->chip_info->
   lvds_chip_info);
 } else if (VT1636_LVDS ==
 viaparinfo->chip_info->lvds_chip_info.lvds_chip_name) {
  viafb_enable_lvds_vt1636(viaparinfo->lvds_setting_info,
       &viaparinfo->chip_info->lvds_chip_info);
 } else {

  viafb_write_reg_mask(SR2A, VIASR, 0x0F, 0x0F);

  viafb_write_reg_mask(SR3D, VIASR, 0x20, 0x20);

  viafb_write_reg_mask(CR91, VIACR, 0x00, 0x80);


  if (viaparinfo->lvds_setting_info->iga_path == IGA1) {

   viafb_write_reg_mask(CR97, VIACR, 0x00, 0x10);

   viafb_write_reg_mask(CR99, VIACR, 0x00, 0x10);
  } else {

   viafb_write_reg_mask(CR97, VIACR, 0x10, 0x10);

   viafb_write_reg_mask(CR99, VIACR, 0x10, 0x10);
  }

  viafb_write_reg_mask(CR6A, VIACR, 0x48, 0x48);
 }

 if ((viaparinfo->lvds_setting_info->iga_path == IGA1)
     || (viaparinfo->lvds_setting_info->iga_path == IGA1_IGA2)) {

  viafb_write_reg_mask(SR16, VIASR, 0x40, 0x40);

  viafb_write_reg_mask(CR6A, VIACR, 0x00, 0x80);

 } else {
  viafb_write_reg_mask(CR6A, VIACR, 0x80, 0x80);
 }

}
