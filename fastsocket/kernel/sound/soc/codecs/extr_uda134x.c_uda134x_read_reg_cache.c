
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct snd_soc_codec {unsigned int* reg_cache; } ;


 unsigned int UDA134X_REGS_NUM ;

__attribute__((used)) static inline unsigned int uda134x_read_reg_cache(struct snd_soc_codec *codec,
 unsigned int reg)
{
 u8 *cache = codec->reg_cache;

 if (reg >= UDA134X_REGS_NUM)
  return -1;
 return cache[reg];
}
