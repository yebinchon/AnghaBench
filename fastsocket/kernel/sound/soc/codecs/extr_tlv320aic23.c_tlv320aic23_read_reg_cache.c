
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;
struct snd_soc_codec {unsigned int* reg_cache; } ;


 unsigned int ARRAY_SIZE (int ) ;
 int tlv320aic23_reg ;

__attribute__((used)) static inline unsigned int tlv320aic23_read_reg_cache(struct snd_soc_codec
            *codec, unsigned int reg)
{
 u16 *cache = codec->reg_cache;
 if (reg >= ARRAY_SIZE(tlv320aic23_reg))
  return -1;
 return cache[reg];
}
