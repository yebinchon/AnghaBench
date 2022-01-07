
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* chip_info; TYPE_1__* lvds_setting_info; } ;
struct TYPE_5__ {int gfx_chip_name; } ;
struct TYPE_4__ {scalar_t__ display_method; } ;


 int IGA1_IGA2 ;
 scalar_t__ LCD_EXPANDSION ;






 int load_lcd_k400_patch_tbl (int,int,int) ;
 int load_lcd_p880_patch_tbl (int,int,int) ;
 int viafb_get_mode_index (int,int) ;
 int viafb_lock_crt () ;
 int viafb_unlock_crt () ;
 TYPE_3__* viaparinfo ;

__attribute__((used)) static void load_lcd_patch_regs(int set_hres, int set_vres,
 int panel_id, int set_iga)
{
 int vmode_index;

 vmode_index = viafb_get_mode_index(set_hres, set_vres);

 viafb_unlock_crt();


 if ((set_iga == IGA1_IGA2) &&
  (viaparinfo->lvds_setting_info->display_method ==
     LCD_EXPANDSION)) {
  switch (viaparinfo->chip_info->gfx_chip_name) {
  case 133:
  case 130:
   load_lcd_k400_patch_tbl(set_hres, set_vres, panel_id);
   break;
  case 129:
   break;
  case 128:
  case 132:
  case 131:
   load_lcd_p880_patch_tbl(set_hres, set_vres, panel_id);
  }
 }

 viafb_lock_crt();
}
