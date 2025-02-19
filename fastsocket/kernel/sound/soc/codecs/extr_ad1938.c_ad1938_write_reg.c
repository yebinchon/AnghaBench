
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef unsigned int u8 ;
struct spi_transfer {int* tx_buf; int len; } ;
struct spi_message {int dummy; } ;
struct snd_soc_codec {unsigned int* reg_cache; int control_data; } ;


 int AD1938_SPI_ADDR ;
 int AD1938_SPI_BUFLEN ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (int ,struct spi_message*) ;

__attribute__((used)) static int ad1938_write_reg(struct snd_soc_codec *codec, unsigned int reg,
  unsigned int value)
{
 u8 *reg_cache = codec->reg_cache;
 int ret = 0;

 if (value != reg_cache[reg]) {
  uint8_t buf[AD1938_SPI_BUFLEN];
  struct spi_transfer t = {
   .tx_buf = buf,
   .len = AD1938_SPI_BUFLEN,
  };
  struct spi_message m;

  buf[0] = AD1938_SPI_ADDR << 1;
  buf[1] = reg;
  buf[2] = value;
  spi_message_init(&m);
  spi_message_add_tail(&t, &m);
  ret = spi_sync(codec->control_data, &m);
  if (ret == 0)
   reg_cache[reg] = value;
 }

 return ret;
}
