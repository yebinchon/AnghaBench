
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_device {int dummy; } ;


 int FB_BLANK_UNBLANK ;
 int PPC_LDD2 ;
 int PPDR ;
 int PPSR ;

__attribute__((used)) static int jornada_lcd_set_power(struct lcd_device *dev, int power)
{
 if (power != FB_BLANK_UNBLANK) {
  PPSR &= ~PPC_LDD2;
  PPDR |= PPC_LDD2;
 } else
  PPSR |= PPC_LDD2;

 return 0;
}
