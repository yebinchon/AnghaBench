
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct snd_soc_codec {size_t* reg_cache; } ;


 size_t AK4535_CACHEREGNUM ;

__attribute__((used)) static inline void ak4535_write_reg_cache(struct snd_soc_codec *codec,
 u16 reg, unsigned int value)
{
 u16 *cache = codec->reg_cache;
 if (reg >= AK4535_CACHEREGNUM)
  return;
 cache[reg] = value;
}
