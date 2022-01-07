
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct platform_device {int dev; } ;
struct TYPE_2__ {void* max_brightness; void* brightness; int power; } ;
struct backlight_device {TYPE_1__ props; } ;


 int ENODEV ;
 int FB_BLANK_UNBLANK ;
 void* HW_LEVEL_MAX ;
 void* HW_LEVEL_MIN ;
 scalar_t__ IS_ERR (struct backlight_device*) ;
 int PCI_DEVICE_ID_AL_M1533 ;
 int PCI_DEVICE_ID_AL_M7101 ;
 int PCI_VENDOR_ID_AL ;
 int PTR_ERR (struct backlight_device*) ;
 int SB_MPS1 ;
 struct backlight_device* backlight_device_register (char*,int *,int *,int *) ;
 int pci_dev_put (void*) ;
 void* pci_get_device (int ,int ,int *) ;
 int pci_read_config_byte (void*,int ,int*) ;
 int pci_write_config_byte (void*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct backlight_device*) ;
 void* pmu_dev ;
 int printk (char*) ;
 int progearbl_ops ;
 int progearbl_set_intensity (struct backlight_device*) ;
 void* sb_dev ;

__attribute__((used)) static int progearbl_probe(struct platform_device *pdev)
{
 u8 temp;
 struct backlight_device *progear_backlight_device;

 pmu_dev = pci_get_device(PCI_VENDOR_ID_AL, PCI_DEVICE_ID_AL_M7101, ((void*)0));
 if (!pmu_dev) {
  printk("ALI M7101 PMU not found.\n");
  return -ENODEV;
 }

 sb_dev = pci_get_device(PCI_VENDOR_ID_AL, PCI_DEVICE_ID_AL_M1533, ((void*)0));
 if (!sb_dev) {
  printk("ALI 1533 SB not found.\n");
  pci_dev_put(pmu_dev);
  return -ENODEV;
 }


 pci_read_config_byte(sb_dev, SB_MPS1, &temp);
 pci_write_config_byte(sb_dev, SB_MPS1, temp | 0x20);

 progear_backlight_device = backlight_device_register("progear-bl",
            &pdev->dev, ((void*)0),
            &progearbl_ops);
 if (IS_ERR(progear_backlight_device))
  return PTR_ERR(progear_backlight_device);

 platform_set_drvdata(pdev, progear_backlight_device);

 progear_backlight_device->props.power = FB_BLANK_UNBLANK;
 progear_backlight_device->props.brightness = HW_LEVEL_MAX - HW_LEVEL_MIN;
 progear_backlight_device->props.max_brightness = HW_LEVEL_MAX - HW_LEVEL_MIN;
 progearbl_set_intensity(progear_backlight_device);

 return 0;
}
