
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
typedef int tmp ;
struct spi_device {int dev; } ;
struct snd_soc_codec {unsigned int* reg_cache; unsigned int reg_cache_size; struct spi_device* control_data; } ;


 unsigned int AK4104_REG_MASK ;
 unsigned int AK4104_WRITE ;
 int EINVAL ;
 int EIO ;
 int dev_err (int *,char*) ;
 scalar_t__ spi_write (struct spi_device*,unsigned int*,int) ;

__attribute__((used)) static int ak4104_spi_write(struct snd_soc_codec *codec, unsigned int reg,
       unsigned int value)
{
 u8 *cache = codec->reg_cache;
 struct spi_device *spi = codec->control_data;

 if (reg >= codec->reg_cache_size)
  return -EINVAL;

 reg &= AK4104_REG_MASK;
 reg |= AK4104_WRITE;


 if (cache[reg] != value) {
  u8 tmp[2] = { reg, value };
  if (spi_write(spi, tmp, sizeof(tmp))) {
   dev_err(&spi->dev, "SPI write failed\n");
   return -EIO;
  }

  cache[reg] = value;
 }

 return 0;
}
