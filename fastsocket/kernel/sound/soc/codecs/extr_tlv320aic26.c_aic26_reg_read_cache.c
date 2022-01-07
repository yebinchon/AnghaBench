
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;
struct snd_soc_codec {unsigned int* reg_cache; } ;


 unsigned int AIC26_NUM_REGS ;
 int WARN_ON_ONCE (int) ;

__attribute__((used)) static unsigned int aic26_reg_read_cache(struct snd_soc_codec *codec,
      unsigned int reg)
{
 u16 *cache = codec->reg_cache;

 if (reg >= AIC26_NUM_REGS) {
  WARN_ON_ONCE(1);
  return 0;
 }

 return cache[reg];
}
