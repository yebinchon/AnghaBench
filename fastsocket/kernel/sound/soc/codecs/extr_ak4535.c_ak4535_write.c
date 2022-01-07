
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct snd_soc_codec {int (* hw_write ) (int ,unsigned int*,int) ;int control_data; } ;


 int EIO ;
 int ak4535_write_reg_cache (struct snd_soc_codec*,unsigned int,unsigned int) ;
 int stub1 (int ,unsigned int*,int) ;

__attribute__((used)) static int ak4535_write(struct snd_soc_codec *codec, unsigned int reg,
 unsigned int value)
{
 u8 data[2];





 data[0] = reg & 0xff;
 data[1] = value & 0xff;

 ak4535_write_reg_cache(codec, reg, value);
 if (codec->hw_write(codec->control_data, data, 2) == 2)
  return 0;
 else
  return -EIO;
}
