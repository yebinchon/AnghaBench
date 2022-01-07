
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct snd_soc_codec {int* reg_cache; struct aic26* private_data; } ;
struct aic26 {TYPE_1__* spi; } ;
struct TYPE_2__ {int dev; } ;


 unsigned int AIC26_NUM_REGS ;
 int AIC26_WRITE_COMMAND_WORD (unsigned int) ;
 int EINVAL ;
 int EIO ;
 int WARN_ON_ONCE (int) ;
 int dev_err (int *,char*) ;
 int spi_write (TYPE_1__*,int*,int) ;

__attribute__((used)) static int aic26_reg_write(struct snd_soc_codec *codec, unsigned int reg,
      unsigned int value)
{
 struct aic26 *aic26 = codec->private_data;
 u16 *cache = codec->reg_cache;
 u16 cmd;
 u8 buffer[4];
 int rc;

 if (reg >= AIC26_NUM_REGS) {
  WARN_ON_ONCE(1);
  return -EINVAL;
 }



 cmd = AIC26_WRITE_COMMAND_WORD(reg);
 buffer[0] = (cmd >> 8) & 0xff;
 buffer[1] = cmd & 0xff;
 buffer[2] = value >> 8;
 buffer[3] = value;
 rc = spi_write(aic26->spi, buffer, 4);
 if (rc) {
  dev_err(&aic26->spi->dev, "AIC26 reg read error\n");
  return -EIO;
 }


 cache[reg] = value;
 return 0;
}
