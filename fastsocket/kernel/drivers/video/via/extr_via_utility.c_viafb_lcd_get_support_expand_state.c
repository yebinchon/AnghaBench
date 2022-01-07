
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
 int viafb_lcd_panel_id ;

bool viafb_lcd_get_support_expand_state(u32 xres, u32 yres)
{
 unsigned int support_state = 0;

 switch (viafb_lcd_panel_id) {
 case 140:
  if ((xres < 640) && (yres < 480))
   support_state = 1;
  break;

 case 139:
  if ((xres < 800) && (yres < 600))
   support_state = 1;
  break;

 case 138:
  if ((xres < 1024) && (yres < 768))
   support_state = 1;
  break;

 case 137:
  if ((xres < 1280) && (yres < 768))
   support_state = 1;
  break;

 case 136:
  if ((xres < 1280) && (yres < 1024))
   support_state = 1;
  break;

 case 135:
  if ((xres < 1400) && (yres < 1050))
   support_state = 1;
  break;

 case 134:
  if ((xres < 1600) && (yres < 1200))
   support_state = 1;
  break;

 case 133:
  if ((xres < 1366) && (yres < 768))
   support_state = 1;
  break;

 case 132:
  if ((xres < 1024) && (yres < 600))
   support_state = 1;
  break;

 case 131:
  if ((xres < 1280) && (yres < 800))
   support_state = 1;
  break;

 case 130:
  if ((xres < 800) && (yres < 480))
   support_state = 1;
  break;

 case 129:
  if ((xres < 1360) && (yres < 768))
   support_state = 1;
  break;

 case 128:
  if ((xres < 480) && (yres < 640))
   support_state = 1;
  break;

 default:
  support_state = 0;
  break;
 }

 return support_state;
}
