
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dev; } ;
struct snd_soc_codec {int* reg_cache; int reg_cache_size; struct spi_device* control_data; } ;


 int AK4104_READ ;
 int dev_err (int *,char*) ;
 int spi_w8r8 (struct spi_device*,int) ;

__attribute__((used)) static int ak4104_fill_cache(struct snd_soc_codec *codec)
{
 int i;
 u8 *reg_cache = codec->reg_cache;
 struct spi_device *spi = codec->control_data;

 for (i = 0; i < codec->reg_cache_size; i++) {
  int ret = spi_w8r8(spi, i | AK4104_READ);
  if (ret < 0) {
   dev_err(&spi->dev, "SPI write failure\n");
   return ret;
  }

  reg_cache[i] = ret;
 }

 return 0;
}
