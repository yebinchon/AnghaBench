
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dev; } ;
struct snd_soc_codec {int* reg_cache; int reg_cache_size; struct spi_device* control_data; } ;


 int EIO ;
 int ad1938_read_reg (struct snd_soc_codec*,int) ;
 int dev_err (int *,char*) ;

__attribute__((used)) static int ad1938_fill_cache(struct snd_soc_codec *codec)
{
 int i;
 u8 *reg_cache = codec->reg_cache;
 struct spi_device *spi = codec->control_data;

 for (i = 0; i < codec->reg_cache_size; i++) {
  int ret = ad1938_read_reg(codec, i);
  if (ret == -EIO) {
   dev_err(&spi->dev, "AD1938 SPI read failure\n");
   return ret;
  }
  reg_cache[i] = ret;
 }

 return 0;
}
