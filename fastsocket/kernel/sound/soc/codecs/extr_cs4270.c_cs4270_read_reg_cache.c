
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct snd_soc_codec {unsigned int* reg_cache; } ;


 unsigned int CS4270_FIRSTREG ;
 unsigned int CS4270_LASTREG ;
 unsigned int EIO ;

__attribute__((used)) static unsigned int cs4270_read_reg_cache(struct snd_soc_codec *codec,
 unsigned int reg)
{
 u8 *cache = codec->reg_cache;

 if ((reg < CS4270_FIRSTREG) || (reg > CS4270_LASTREG))
  return -EIO;

 return cache[reg - CS4270_FIRSTREG];
}
