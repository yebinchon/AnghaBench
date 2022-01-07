
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fb_info {int dummy; } ;
struct TYPE_3__ {int accel_flags; } ;
struct TYPE_4__ {TYPE_1__ var; } ;
struct cfb_info {TYPE_2__ fb; } ;


 int CO_CTRL_BUSY ;
 int CO_REG_CONTROL ;
 int FB_ACCELF_TEXT ;
 int cyber2000fb_readb (int ,struct cfb_info*) ;
 int cyber2000fb_writeb (int ,int ,struct cfb_info*) ;
 int debug_printf (char*) ;
 int udelay (int) ;

__attribute__((used)) static int cyber2000fb_sync(struct fb_info *info)
{
 struct cfb_info *cfb = (struct cfb_info *)info;
 int count = 100000;

 if (!(cfb->fb.var.accel_flags & FB_ACCELF_TEXT))
  return 0;

 while (cyber2000fb_readb(CO_REG_CONTROL, cfb) & CO_CTRL_BUSY) {
  if (!count--) {
   debug_printf("accel_wait timed out\n");
   cyber2000fb_writeb(0, CO_REG_CONTROL, cfb);
   break;
  }
  udelay(1);
 }
 return 0;
}
