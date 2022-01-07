
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALI_7101_GPIO_O ;
 int ALI_7101_WDT ;
 char ALI_WDT_ARM ;
 int WDT_ENABLE ;
 int alim7101_pmu ;
 int pci_read_config_byte (int ,int ,char*) ;
 int pci_write_config_byte (int ,int ,char) ;
 scalar_t__ use_gpio ;

__attribute__((used)) static void wdt_change(int writeval)
{
 char tmp;

 pci_read_config_byte(alim7101_pmu, ALI_7101_WDT, &tmp);
 if (writeval == WDT_ENABLE) {
  pci_write_config_byte(alim7101_pmu,
     ALI_7101_WDT, (tmp | ALI_WDT_ARM));
  if (use_gpio) {
   pci_read_config_byte(alim7101_pmu,
     ALI_7101_GPIO_O, &tmp);
   pci_write_config_byte(alim7101_pmu,
     ALI_7101_GPIO_O, tmp & ~0x20);
  }

 } else {
  pci_write_config_byte(alim7101_pmu,
     ALI_7101_WDT, (tmp & ~ALI_WDT_ARM));
  if (use_gpio) {
   pci_read_config_byte(alim7101_pmu,
     ALI_7101_GPIO_O, &tmp);
   pci_write_config_byte(alim7101_pmu,
     ALI_7101_GPIO_O, tmp | 0x20);
  }
 }
}
