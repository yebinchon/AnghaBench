
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;
struct snd_soc_codec {unsigned int* reg_cache; } ;


 int ARRAY_SIZE (int ) ;
 int wm8753_reg ;

__attribute__((used)) static inline unsigned int wm8753_read_reg_cache(struct snd_soc_codec *codec,
 unsigned int reg)
{
 u16 *cache = codec->reg_cache;
 if (reg < 1 || reg >= (ARRAY_SIZE(wm8753_reg) + 1))
  return -1;
 return cache[reg - 1];
}
