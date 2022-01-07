
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct corgi_lcd {int limit_mask; } ;
struct TYPE_2__ {int brightness; scalar_t__ power; scalar_t__ fb_blank; } ;
struct backlight_device {TYPE_1__ props; int dev; } ;


 int CORGIBL_BATTLOW ;
 int CORGIBL_SUSPENDED ;
 scalar_t__ FB_BLANK_UNBLANK ;
 int corgi_bl_set_intensity (struct corgi_lcd*,int) ;
 int corgibl_flags ;
 struct corgi_lcd* dev_get_drvdata (int *) ;

__attribute__((used)) static int corgi_bl_update_status(struct backlight_device *bd)
{
 struct corgi_lcd *lcd = dev_get_drvdata(&bd->dev);
 int intensity = bd->props.brightness;

 if (bd->props.power != FB_BLANK_UNBLANK)
  intensity = 0;

 if (bd->props.fb_blank != FB_BLANK_UNBLANK)
  intensity = 0;

 if (corgibl_flags & CORGIBL_SUSPENDED)
  intensity = 0;

 if ((corgibl_flags & CORGIBL_BATTLOW) && intensity > lcd->limit_mask)
  intensity = lcd->limit_mask;

 return corgi_bl_set_intensity(lcd, intensity);
}
