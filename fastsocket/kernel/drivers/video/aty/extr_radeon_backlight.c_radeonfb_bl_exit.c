
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeonfb_info {TYPE_1__* info; } ;
struct radeon_bl_privdata {int dummy; } ;
struct backlight_device {int dummy; } ;
struct TYPE_2__ {struct backlight_device* bl_dev; } ;


 int backlight_device_unregister (struct backlight_device*) ;
 struct radeon_bl_privdata* bl_get_data (struct backlight_device*) ;
 int kfree (struct radeon_bl_privdata*) ;
 int printk (char*) ;

void radeonfb_bl_exit(struct radeonfb_info *rinfo)
{
 struct backlight_device *bd = rinfo->info->bl_dev;

 if (bd) {
  struct radeon_bl_privdata *pdata;

  pdata = bl_get_data(bd);
  backlight_device_unregister(bd);
  kfree(pdata);
  rinfo->info->bl_dev = ((void*)0);

  printk("radeonfb: Backlight unloaded\n");
 }
}
