
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ lcd_enabled ;
 scalar_t__ lcd_initialized ;
 int lcd_write (int *,char*,int ,int *) ;
 int strlen (char*) ;

void panel_lcd_print(char *s)
{
 if (lcd_enabled && lcd_initialized)
  lcd_write(((void*)0), s, strlen(s), ((void*)0));
}
