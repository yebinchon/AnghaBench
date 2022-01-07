
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct snd_soc_codec {unsigned int* reg_cache; } ;


 unsigned int EIO ;
 unsigned int TWL4030_CACHEREGNUM ;

__attribute__((used)) static inline unsigned int twl4030_read_reg_cache(struct snd_soc_codec *codec,
 unsigned int reg)
{
 u8 *cache = codec->reg_cache;

 if (reg >= TWL4030_CACHEREGNUM)
  return -EIO;

 return cache[reg];
}
