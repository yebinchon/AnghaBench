
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
typedef unsigned int u16 ;
struct snd_soc_codec {unsigned int* reg_cache; unsigned int reg_cache_size; int (* hw_write ) (int ,unsigned int*,int) ;int control_data; int volatile_register; } ;


 int BUG_ON (int ) ;
 int EIO ;
 int stub1 (int ,unsigned int*,int) ;

__attribute__((used)) static int snd_soc_7_9_write(struct snd_soc_codec *codec, unsigned int reg,
        unsigned int value)
{
 u16 *cache = codec->reg_cache;
 u8 data[2];
 int ret;

 BUG_ON(codec->volatile_register);

 data[0] = (reg << 1) | ((value >> 8) & 0x0001);
 data[1] = value & 0x00ff;

 if (reg < codec->reg_cache_size)
  cache[reg] = value;
 ret = codec->hw_write(codec->control_data, data, 2);
 if (ret == 2)
  return 0;
 if (ret < 0)
  return ret;
 else
  return -EIO;
}
