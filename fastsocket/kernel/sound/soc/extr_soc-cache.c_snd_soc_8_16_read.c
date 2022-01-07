
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;
struct snd_soc_codec {unsigned int* reg_cache; unsigned int reg_cache_size; unsigned int (* hw_read ) (struct snd_soc_codec*,unsigned int) ;} ;


 scalar_t__ snd_soc_codec_volatile_register (struct snd_soc_codec*,unsigned int) ;
 unsigned int stub1 (struct snd_soc_codec*,unsigned int) ;

__attribute__((used)) static unsigned int snd_soc_8_16_read(struct snd_soc_codec *codec,
          unsigned int reg)
{
 u16 *cache = codec->reg_cache;

 if (reg >= codec->reg_cache_size ||
     snd_soc_codec_volatile_register(codec, reg))
  return codec->hw_read(codec, reg);
 else
  return cache[reg];
}
