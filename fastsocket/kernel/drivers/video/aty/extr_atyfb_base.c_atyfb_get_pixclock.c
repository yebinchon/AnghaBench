
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct fb_var_screeninfo {int pixclock; scalar_t__ xres; } ;
struct TYPE_3__ {scalar_t__ xres; } ;
struct TYPE_4__ {TYPE_1__ ct; } ;
struct atyfb_par {scalar_t__ lcd_table; int lcd_pixclock; TYPE_2__ pll; } ;


 int LCD_GEN_CNTL ;
 int LCD_ON ;
 int aty_ld_lcd (int ,struct atyfb_par*) ;

__attribute__((used)) static u32 atyfb_get_pixclock(struct fb_var_screeninfo *var,
         struct atyfb_par *par)
{
 u32 pixclock = var->pixclock;
 return pixclock;
}
