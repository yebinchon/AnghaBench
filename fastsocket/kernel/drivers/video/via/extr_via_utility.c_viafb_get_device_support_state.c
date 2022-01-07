
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {TYPE_3__* chip_info; } ;
struct TYPE_6__ {scalar_t__ lvds_chip_name; } ;
struct TYPE_5__ {scalar_t__ tmds_chip_name; } ;
struct TYPE_7__ {TYPE_2__ lvds_chip_info; TYPE_1__ tmds_chip_info; } ;


 int CRT_Device ;
 int DVI_Device ;
 int LCD_Device ;
 scalar_t__ VT1631_LVDS ;
 scalar_t__ VT1632_TMDS ;
 TYPE_4__* viaparinfo ;

void viafb_get_device_support_state(u32 *support_state)
{
 *support_state = CRT_Device;

 if (viaparinfo->chip_info->tmds_chip_info.tmds_chip_name == VT1632_TMDS)
  *support_state |= DVI_Device;

 if (viaparinfo->chip_info->lvds_chip_info.lvds_chip_name == VT1631_LVDS)
  *support_state |= LCD_Device;
}
