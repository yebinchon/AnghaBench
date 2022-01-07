
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_device {int dummy; } ;


 int FB_BLANK_POWERDOWN ;
 int FB_BLANK_UNBLANK ;
 int PPC_LDD2 ;
 int PPSR ;

__attribute__((used)) static int jornada_lcd_get_power(struct lcd_device *dev)
{

 if (PPSR & PPC_LDD2)
  return FB_BLANK_UNBLANK;
 else
  return FB_BLANK_POWERDOWN;
}
