
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u16 ;
struct snd_soc_codec {int * reg_cache; } ;


 size_t ARRAY_SIZE (int ) ;
 int tlv320aic23_reg ;

__attribute__((used)) static inline void tlv320aic23_write_reg_cache(struct snd_soc_codec *codec,
            u8 reg, u16 value)
{
 u16 *cache = codec->reg_cache;
 if (reg >= ARRAY_SIZE(tlv320aic23_reg))
  return;
 cache[reg] = value;
}
