
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct snd_soc_codec {size_t* reg_cache; } ;


 size_t UDA134X_REGS_NUM ;

__attribute__((used)) static inline void uda134x_write_reg_cache(struct snd_soc_codec *codec,
 u8 reg, unsigned int value)
{
 u8 *cache = codec->reg_cache;

 if (reg >= UDA134X_REGS_NUM)
  return;
 cache[reg] = value;
}
