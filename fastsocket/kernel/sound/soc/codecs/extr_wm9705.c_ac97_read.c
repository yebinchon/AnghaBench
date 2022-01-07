
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u16 ;
struct snd_soc_codec {unsigned int* reg_cache; int ac97; } ;
struct TYPE_2__ {unsigned int (* read ) (int ,unsigned int) ;} ;





 unsigned int ARRAY_SIZE (int ) ;
 unsigned int EIO ;
 TYPE_1__ soc_ac97_ops ;
 unsigned int stub1 (int ,unsigned int) ;
 int wm9705_reg ;

__attribute__((used)) static unsigned int ac97_read(struct snd_soc_codec *codec, unsigned int reg)
{
 u16 *cache = codec->reg_cache;

 switch (reg) {
 case 130:
 case 129:
 case 128:
  return soc_ac97_ops.read(codec->ac97, reg);
 default:
  reg = reg >> 1;

  if (reg >= (ARRAY_SIZE(wm9705_reg)))
   return -EIO;

  return cache[reg];
 }
}
