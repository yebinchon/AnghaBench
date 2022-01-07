
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct oxygen {int dummy; } ;


 int OXYGEN_EEPROM_BUSY ;
 int OXYGEN_EEPROM_CONTROL ;
 int OXYGEN_EEPROM_DATA ;
 unsigned int OXYGEN_EEPROM_DIR_READ ;
 int OXYGEN_EEPROM_STATUS ;
 int oxygen_read16 (struct oxygen*,int ) ;
 int oxygen_read8 (struct oxygen*,int ) ;
 int oxygen_write8 (struct oxygen*,int ,unsigned int) ;
 int udelay (int) ;

u16 oxygen_read_eeprom(struct oxygen *chip, unsigned int index)
{
 unsigned int timeout;

 oxygen_write8(chip, OXYGEN_EEPROM_CONTROL,
        index | OXYGEN_EEPROM_DIR_READ);
 for (timeout = 0; timeout < 100; ++timeout) {
  udelay(1);
  if (!(oxygen_read8(chip, OXYGEN_EEPROM_STATUS)
        & OXYGEN_EEPROM_BUSY))
   break;
 }
 return oxygen_read16(chip, OXYGEN_EEPROM_DATA);
}
