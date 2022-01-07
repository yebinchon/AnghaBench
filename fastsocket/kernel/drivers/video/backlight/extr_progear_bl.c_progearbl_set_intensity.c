
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int brightness; scalar_t__ power; scalar_t__ fb_blank; } ;
struct backlight_device {TYPE_1__ props; } ;


 scalar_t__ FB_BLANK_UNBLANK ;
 scalar_t__ HW_LEVEL_MIN ;
 int PMU_LPCR ;
 int pci_write_config_byte (int ,int ,scalar_t__) ;
 int pmu_dev ;

__attribute__((used)) static int progearbl_set_intensity(struct backlight_device *bd)
{
 int intensity = bd->props.brightness;

 if (bd->props.power != FB_BLANK_UNBLANK)
  intensity = 0;
 if (bd->props.fb_blank != FB_BLANK_UNBLANK)
  intensity = 0;

 pci_write_config_byte(pmu_dev, PMU_LPCR, intensity + HW_LEVEL_MIN);

 return 0;
}
