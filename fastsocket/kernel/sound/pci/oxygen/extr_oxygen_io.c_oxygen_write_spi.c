
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct oxygen {int dummy; } ;


 int OXYGEN_SPI_BUSY ;
 int OXYGEN_SPI_CONTROL ;
 int OXYGEN_SPI_DATA1 ;
 int OXYGEN_SPI_DATA2 ;
 int OXYGEN_SPI_DATA3 ;
 int OXYGEN_SPI_DATA_LENGTH_3 ;
 int oxygen_read8 (struct oxygen*,int ) ;
 int oxygen_write8 (struct oxygen*,int ,int) ;
 int udelay (int) ;

void oxygen_write_spi(struct oxygen *chip, u8 control, unsigned int data)
{
 unsigned int count;


 count = 10;
 while ((oxygen_read8(chip, OXYGEN_SPI_CONTROL) & OXYGEN_SPI_BUSY)
        && count > 0) {
  udelay(4);
  --count;
 }

 oxygen_write8(chip, OXYGEN_SPI_DATA1, data);
 oxygen_write8(chip, OXYGEN_SPI_DATA2, data >> 8);
 if (control & OXYGEN_SPI_DATA_LENGTH_3)
  oxygen_write8(chip, OXYGEN_SPI_DATA3, data >> 16);
 oxygen_write8(chip, OXYGEN_SPI_CONTROL, control);
}
