
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;
struct snd_soc_codec {unsigned int* reg_cache; } ;


 unsigned int AK4535_CACHEREGNUM ;

__attribute__((used)) static inline unsigned int ak4535_read_reg_cache(struct snd_soc_codec *codec,
 unsigned int reg)
{
 u16 *cache = codec->reg_cache;
 if (reg >= AK4535_CACHEREGNUM)
  return -1;
 return cache[reg];
}
