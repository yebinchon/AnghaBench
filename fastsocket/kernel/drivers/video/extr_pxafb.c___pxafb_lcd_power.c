
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int var; } ;
struct pxafb_info {TYPE_1__ fb; int (* lcd_power ) (int,int *) ;} ;


 int pr_debug (char*,char*) ;
 int stub1 (int,int *) ;

__attribute__((used)) static inline void __pxafb_lcd_power(struct pxafb_info *fbi, int on)
{
 pr_debug("pxafb: LCD power o%s\n", on ? "n" : "ff");

 if (fbi->lcd_power)
  fbi->lcd_power(on, &fbi->fb.var);
}
