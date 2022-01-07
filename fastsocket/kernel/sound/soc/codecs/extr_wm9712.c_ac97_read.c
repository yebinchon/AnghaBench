
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u16 ;
struct snd_soc_codec {unsigned int* reg_cache; int ac97; } ;
struct TYPE_2__ {unsigned int (* read ) (int ,unsigned int) ;} ;


 unsigned int AC97_GPIO_STATUS ;
 unsigned int AC97_REC_GAIN ;
 unsigned int AC97_RESET ;
 unsigned int AC97_VENDOR_ID1 ;
 unsigned int AC97_VENDOR_ID2 ;
 unsigned int ARRAY_SIZE (int ) ;
 unsigned int EIO ;
 TYPE_1__ soc_ac97_ops ;
 unsigned int stub1 (int ,unsigned int) ;
 int wm9712_reg ;

__attribute__((used)) static unsigned int ac97_read(struct snd_soc_codec *codec,
 unsigned int reg)
{
 u16 *cache = codec->reg_cache;

 if (reg == AC97_RESET || reg == AC97_GPIO_STATUS ||
  reg == AC97_VENDOR_ID1 || reg == AC97_VENDOR_ID2 ||
  reg == AC97_REC_GAIN)
  return soc_ac97_ops.read(codec->ac97, reg);
 else {
  reg = reg >> 1;

  if (reg >= (ARRAY_SIZE(wm9712_reg)))
   return -EIO;

  return cache[reg];
 }
}
