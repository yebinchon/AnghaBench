
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_device_id {int subdevice; scalar_t__ driver_data; scalar_t__ vendor; } ;
struct oxygen {int dummy; } ;


 scalar_t__ BROKEN_EEPROM_DRIVER_DATA ;
 int OXYGEN_FUNCTION ;
 int OXYGEN_FUNCTION_ENABLE_SPI_4_5 ;
 int oxygen_clear_bits8 (struct oxygen*,int ,int ) ;
 int oxygen_read_eeprom (struct oxygen*,int) ;

__attribute__((used)) static const struct pci_device_id *
oxygen_search_pci_id(struct oxygen *chip, const struct pci_device_id ids[])
{
 u16 subdevice;





 oxygen_clear_bits8(chip, OXYGEN_FUNCTION,
      OXYGEN_FUNCTION_ENABLE_SPI_4_5);




 subdevice = oxygen_read_eeprom(chip, 2);

 if (subdevice == 0xffff && oxygen_read_eeprom(chip, 1) == 0xffff)
  subdevice = 0x8788;





 for (; ids->vendor; ++ids)
  if (ids->subdevice == subdevice &&
      ids->driver_data != BROKEN_EEPROM_DRIVER_DATA)
   return ids;
 return ((void*)0);
}
