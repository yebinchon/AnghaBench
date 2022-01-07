
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct snd_soc_codec {unsigned int* reg_cache; unsigned int reg_cache_size; } ;


 unsigned int EINVAL ;

__attribute__((used)) static unsigned int ad1938_read_reg_cache(struct snd_soc_codec *codec,
       unsigned int reg)
{
 u8 *reg_cache = codec->reg_cache;

 if (reg >= codec->reg_cache_size)
  return -EINVAL;

 return reg_cache[reg];
}
