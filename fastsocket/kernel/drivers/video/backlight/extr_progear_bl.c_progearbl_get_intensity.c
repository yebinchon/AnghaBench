
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct backlight_device {int dummy; } ;


 int HW_LEVEL_MIN ;
 int PMU_LPCR ;
 int pci_read_config_byte (int ,int ,int*) ;
 int pmu_dev ;

__attribute__((used)) static int progearbl_get_intensity(struct backlight_device *bd)
{
 u8 intensity;
 pci_read_config_byte(pmu_dev, PMU_LPCR, &intensity);

 return intensity - HW_LEVEL_MIN;
}
