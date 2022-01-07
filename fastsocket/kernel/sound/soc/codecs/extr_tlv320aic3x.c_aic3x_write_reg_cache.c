
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct snd_soc_codec {size_t* reg_cache; } ;


 size_t AIC3X_CACHEREGNUM ;

__attribute__((used)) static inline void aic3x_write_reg_cache(struct snd_soc_codec *codec,
      u8 reg, u8 value)
{
 u8 *cache = codec->reg_cache;
 if (reg >= AIC3X_CACHEREGNUM)
  return;
 cache[reg] = value;
}
