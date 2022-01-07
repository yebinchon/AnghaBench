
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxafb_info {int (* backlight_power ) (int) ;} ;


 int pr_debug (char*,char*) ;
 int stub1 (int) ;

__attribute__((used)) static inline void __pxafb_backlight_power(struct pxafb_info *fbi, int on)
{
 pr_debug("pxafb: backlight o%s\n", on ? "n" : "ff");

 if (fbi->backlight_power)
  fbi->backlight_power(on);
}
