
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1100fb_info {int dummy; } ;


 int DPRINTK (char*,char*) ;
 int sa1100fb_lcd_power (int) ;

__attribute__((used)) static inline void __sa1100fb_lcd_power(struct sa1100fb_info *fbi, int on)
{
 DPRINTK("LCD power o%s\n", on ? "n" : "ff");

 if (sa1100fb_lcd_power)
  sa1100fb_lcd_power(on);
}
