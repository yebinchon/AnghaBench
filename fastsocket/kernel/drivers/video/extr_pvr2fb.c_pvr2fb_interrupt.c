
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ do_blank ;
 scalar_t__ do_vmode_full ;
 scalar_t__ do_vmode_pan ;
 int pvr2_do_blank () ;
 int pvr2_init_display (struct fb_info*) ;
 int pvr2_update_display (struct fb_info*) ;

__attribute__((used)) static irqreturn_t pvr2fb_interrupt(int irq, void *dev_id)
{
 struct fb_info *info = dev_id;

 if (do_vmode_pan || do_vmode_full)
  pvr2_update_display(info);
 if (do_vmode_full)
  pvr2_init_display(info);
 if (do_vmode_pan)
  do_vmode_pan = 0;
 if (do_vmode_full)
  do_vmode_full = 0;
 if (do_blank) {
  pvr2_do_blank();
  do_blank = 0;
 }
 return IRQ_HANDLED;
}
