
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u16 ;
struct snd_soc_codec {unsigned int* reg_cache; int ac97; } ;
struct TYPE_2__ {int (* write ) (int ,unsigned int,unsigned int) ;} ;


 unsigned int ARRAY_SIZE (int ) ;
 int ad1980_reg ;
 TYPE_1__ soc_ac97_ops ;
 int stub1 (int ,unsigned int,unsigned int) ;

__attribute__((used)) static int ac97_write(struct snd_soc_codec *codec, unsigned int reg,
 unsigned int val)
{
 u16 *cache = codec->reg_cache;

 soc_ac97_ops.write(codec->ac97, reg, val);
 reg = reg >> 1;
 if (reg < ARRAY_SIZE(ad1980_reg))
  cache[reg] = val;

 return 0;
}
