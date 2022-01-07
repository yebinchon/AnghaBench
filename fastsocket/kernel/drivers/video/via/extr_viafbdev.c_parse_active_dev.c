
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRT_Device ;
 int DVI_Device ;
 int LCD2_Device ;
 int LCD_Device ;
 void* STATE_OFF ;
 void* STATE_ON ;
 int strncmp (int ,char*,int) ;
 void* viafb_CRT_ON ;
 void* viafb_DVI_ON ;
 void* viafb_LCD2_ON ;
 void* viafb_LCD_ON ;
 void* viafb_SAMM_ON ;
 int viafb_active_dev ;
 int viafb_primary_dev ;

__attribute__((used)) static void parse_active_dev(void)
{
 viafb_CRT_ON = STATE_OFF;
 viafb_DVI_ON = STATE_OFF;
 viafb_LCD_ON = STATE_OFF;
 viafb_LCD2_ON = STATE_OFF;





 if (!strncmp(viafb_active_dev, "CRT+DVI", 7)) {

  viafb_CRT_ON = STATE_ON;
  viafb_DVI_ON = STATE_ON;
  viafb_primary_dev = CRT_Device;
 } else if (!strncmp(viafb_active_dev, "DVI+CRT", 7)) {

  viafb_CRT_ON = STATE_ON;
  viafb_DVI_ON = STATE_ON;
  viafb_primary_dev = DVI_Device;
 } else if (!strncmp(viafb_active_dev, "CRT+LCD", 7)) {

  viafb_CRT_ON = STATE_ON;
  viafb_LCD_ON = STATE_ON;
  viafb_primary_dev = CRT_Device;
 } else if (!strncmp(viafb_active_dev, "LCD+CRT", 7)) {

  viafb_CRT_ON = STATE_ON;
  viafb_LCD_ON = STATE_ON;
  viafb_primary_dev = LCD_Device;
 } else if (!strncmp(viafb_active_dev, "DVI+LCD", 7)) {

  viafb_DVI_ON = STATE_ON;
  viafb_LCD_ON = STATE_ON;
  viafb_primary_dev = DVI_Device;
 } else if (!strncmp(viafb_active_dev, "LCD+DVI", 7)) {

  viafb_DVI_ON = STATE_ON;
  viafb_LCD_ON = STATE_ON;
  viafb_primary_dev = LCD_Device;
 } else if (!strncmp(viafb_active_dev, "LCD+LCD2", 8)) {
  viafb_LCD_ON = STATE_ON;
  viafb_LCD2_ON = STATE_ON;
  viafb_primary_dev = LCD_Device;
 } else if (!strncmp(viafb_active_dev, "LCD2+LCD", 8)) {
  viafb_LCD_ON = STATE_ON;
  viafb_LCD2_ON = STATE_ON;
  viafb_primary_dev = LCD2_Device;
 } else if (!strncmp(viafb_active_dev, "CRT", 3)) {

  viafb_CRT_ON = STATE_ON;
  viafb_SAMM_ON = STATE_OFF;
 } else if (!strncmp(viafb_active_dev, "DVI", 3)) {

  viafb_DVI_ON = STATE_ON;
  viafb_SAMM_ON = STATE_OFF;
 } else if (!strncmp(viafb_active_dev, "LCD", 3)) {

  viafb_LCD_ON = STATE_ON;
  viafb_SAMM_ON = STATE_OFF;
 } else {
  viafb_CRT_ON = STATE_ON;
  viafb_SAMM_ON = STATE_OFF;
 }
}
