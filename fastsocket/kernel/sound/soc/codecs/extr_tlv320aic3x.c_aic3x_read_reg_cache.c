
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct snd_soc_codec {unsigned int* reg_cache; } ;


 unsigned int AIC3X_CACHEREGNUM ;

__attribute__((used)) static inline unsigned int aic3x_read_reg_cache(struct snd_soc_codec *codec,
      unsigned int reg)
{
 u8 *cache = codec->reg_cache;
 if (reg >= AIC3X_CACHEREGNUM)
  return -1;
 return cache[reg];
}
