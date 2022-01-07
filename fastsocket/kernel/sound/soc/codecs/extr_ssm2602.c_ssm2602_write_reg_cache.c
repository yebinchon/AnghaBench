
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct snd_soc_codec {size_t* reg_cache; } ;


 size_t SSM2602_CACHEREGNUM ;

__attribute__((used)) static inline void ssm2602_write_reg_cache(struct snd_soc_codec *codec,
 u16 reg, unsigned int value)
{
 u16 *cache = codec->reg_cache;
 if (reg >= SSM2602_CACHEREGNUM)
  return;
 cache[reg] = value;
}
