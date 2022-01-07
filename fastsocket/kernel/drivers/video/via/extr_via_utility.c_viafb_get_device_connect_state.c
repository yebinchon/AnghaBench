
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CRT_Device ;
 int DVI_Device ;
 int LCD_Device ;
 scalar_t__ viafb_dvi_sense () ;
 int viafb_lcd_get_mobile_state (int*) ;

void viafb_get_device_connect_state(u32 *connect_state)
{
 bool mobile = 0;

 *connect_state = CRT_Device;

 if (viafb_dvi_sense())
  *connect_state |= DVI_Device;

 viafb_lcd_get_mobile_state(&mobile);
 if (mobile)
  *connect_state |= LCD_Device;
}
