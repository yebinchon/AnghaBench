
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct seq_file {int dummy; } ;
struct TYPE_6__ {int lvds_chip_name; } ;
struct TYPE_5__ {TYPE_1__* chip_info; int lvds_setting_info2; int lvds_setting_info; } ;
struct TYPE_4__ {TYPE_3__ lvds_chip_info2; TYPE_3__ lvds_chip_info; } ;



 int seq_printf (struct seq_file*,char*,int,int) ;
 int viafb_gpio_i2c_read_lvds (int ,TYPE_3__*,int) ;
 TYPE_2__* viaparinfo ;

__attribute__((used)) static int viafb_vt1636_proc_show(struct seq_file *m, void *v)
{
 u8 vt1636_08 = 0, vt1636_09 = 0;
 switch (viaparinfo->chip_info->lvds_chip_info.lvds_chip_name) {
 case 128:
  vt1636_08 =
      viafb_gpio_i2c_read_lvds(viaparinfo->lvds_setting_info,
      &viaparinfo->chip_info->lvds_chip_info, 0x08) & 0x0f;
  vt1636_09 =
      viafb_gpio_i2c_read_lvds(viaparinfo->lvds_setting_info,
      &viaparinfo->chip_info->lvds_chip_info, 0x09) & 0x1f;
  seq_printf(m, "%x %x\n", vt1636_08, vt1636_09);
  break;
 default:
  break;
 }
 switch (viaparinfo->chip_info->lvds_chip_info2.lvds_chip_name) {
 case 128:
  vt1636_08 =
      viafb_gpio_i2c_read_lvds(viaparinfo->lvds_setting_info2,
   &viaparinfo->chip_info->lvds_chip_info2, 0x08) & 0x0f;
  vt1636_09 =
      viafb_gpio_i2c_read_lvds(viaparinfo->lvds_setting_info2,
   &viaparinfo->chip_info->lvds_chip_info2, 0x09) & 0x1f;
  seq_printf(m, " %x %x\n", vt1636_08, vt1636_09);
  break;
 default:
  break;
 }
 return 0;
}
