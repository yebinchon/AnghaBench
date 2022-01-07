
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ subvendor; } ;
struct snd_ice1712 {TYPE_1__ eeprom; } ;


 int AUREON_WM_CS ;
 int PRODIGY_WM_CS ;
 scalar_t__ VT1724_SUBDEVICE_PRODIGY71LT ;
 scalar_t__ VT1724_SUBDEVICE_PRODIGY71XT ;
 int aureon_spi_write (struct snd_ice1712*,int ,int,int) ;

__attribute__((used)) static void wm_put_nocache(struct snd_ice1712 *ice, int reg, unsigned short val)
{
 aureon_spi_write(ice,
    ((ice->eeprom.subvendor == VT1724_SUBDEVICE_PRODIGY71LT ||
      ice->eeprom.subvendor == VT1724_SUBDEVICE_PRODIGY71XT) ?
    PRODIGY_WM_CS : AUREON_WM_CS),
   (reg << 9) | (val & 0x1ff), 16);
}
