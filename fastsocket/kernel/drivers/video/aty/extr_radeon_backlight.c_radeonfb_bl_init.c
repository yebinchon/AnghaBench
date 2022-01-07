
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct radeonfb_info {scalar_t__ mon1_type; scalar_t__ family; TYPE_2__* info; } ;
struct radeon_bl_privdata {int negative; struct radeonfb_info* rinfo; } ;
struct TYPE_3__ {int power; scalar_t__ max_brightness; scalar_t__ brightness; } ;
struct backlight_device {TYPE_1__ props; } ;
typedef int name ;
struct TYPE_4__ {int node; struct backlight_device* bl_dev; int dev; } ;


 scalar_t__ CHIP_FAMILY_RV200 ;
 scalar_t__ CHIP_FAMILY_RV250 ;
 scalar_t__ CHIP_FAMILY_RV280 ;
 scalar_t__ CHIP_FAMILY_RV350 ;
 scalar_t__ FB_BACKLIGHT_LEVELS ;
 int FB_BACKLIGHT_MAX ;
 int FB_BLANK_UNBLANK ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct backlight_device*) ;
 int MAX_RADEON_LEVEL ;
 scalar_t__ MT_LCD ;
 struct backlight_device* backlight_device_register (char*,int ,struct radeon_bl_privdata*,int *) ;
 int backlight_update_status (struct backlight_device*) ;
 int fb_bl_default_curve (TYPE_2__*,int ,int,int) ;
 int kfree (struct radeon_bl_privdata*) ;
 struct radeon_bl_privdata* kmalloc (int,int ) ;
 scalar_t__ machine_is_compatible (char*) ;
 int pmac_has_backlight_type (char*) ;
 int printk (char*,...) ;
 int radeon_bl_data ;
 int snprintf (char*,int,char*,int) ;

void radeonfb_bl_init(struct radeonfb_info *rinfo)
{
 struct backlight_device *bd;
 struct radeon_bl_privdata *pdata;
 char name[12];

 if (rinfo->mon1_type != MT_LCD)
  return;







 pdata = kmalloc(sizeof(struct radeon_bl_privdata), GFP_KERNEL);
 if (!pdata) {
  printk("radeonfb: Memory allocation failed\n");
  goto error;
 }

 snprintf(name, sizeof(name), "radeonbl%d", rinfo->info->node);

 bd = backlight_device_register(name, rinfo->info->dev, pdata, &radeon_bl_data);
 if (IS_ERR(bd)) {
  rinfo->info->bl_dev = ((void*)0);
  printk("radeonfb: Backlight registration failed\n");
  goto error;
 }

 pdata->rinfo = rinfo;




 pdata->negative =
  (rinfo->family != CHIP_FAMILY_RV200 &&
   rinfo->family != CHIP_FAMILY_RV250 &&
   rinfo->family != CHIP_FAMILY_RV280 &&
   rinfo->family != CHIP_FAMILY_RV350);
 rinfo->info->bl_dev = bd;
 fb_bl_default_curve(rinfo->info, 0,
   63 * FB_BACKLIGHT_MAX / MAX_RADEON_LEVEL,
  217 * FB_BACKLIGHT_MAX / MAX_RADEON_LEVEL);

 bd->props.max_brightness = FB_BACKLIGHT_LEVELS - 1;
 bd->props.brightness = bd->props.max_brightness;
 bd->props.power = FB_BLANK_UNBLANK;
 backlight_update_status(bd);

 printk("radeonfb: Backlight initialized (%s)\n", name);

 return;

error:
 kfree(pdata);
 return;
}
