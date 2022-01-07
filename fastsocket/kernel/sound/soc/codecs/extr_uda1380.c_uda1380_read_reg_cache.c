
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;
struct snd_soc_codec {unsigned int* reg_cache; } ;


 unsigned int UDA1380_CACHEREGNUM ;
 unsigned int UDA1380_RESET ;

__attribute__((used)) static inline unsigned int uda1380_read_reg_cache(struct snd_soc_codec *codec,
 unsigned int reg)
{
 u16 *cache = codec->reg_cache;
 if (reg == UDA1380_RESET)
  return 0;
 if (reg >= UDA1380_CACHEREGNUM)
  return -1;
 return cache[reg];
}
