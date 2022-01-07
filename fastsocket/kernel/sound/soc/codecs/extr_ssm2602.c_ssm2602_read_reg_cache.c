
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;
struct snd_soc_codec {unsigned int* reg_cache; } ;


 unsigned int SSM2602_CACHEREGNUM ;
 unsigned int SSM2602_RESET ;

__attribute__((used)) static inline unsigned int ssm2602_read_reg_cache(struct snd_soc_codec *codec,
 unsigned int reg)
{
 u16 *cache = codec->reg_cache;
 if (reg == SSM2602_RESET)
  return 0;
 if (reg >= SSM2602_CACHEREGNUM)
  return -1;
 return cache[reg];
}
