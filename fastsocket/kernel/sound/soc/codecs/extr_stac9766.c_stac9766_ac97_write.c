
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u16 ;
struct snd_soc_codec {unsigned int* reg_cache; int ac97; } ;
struct TYPE_2__ {int (* write ) (int ,unsigned int,unsigned int) ;} ;


 unsigned int AC97_INT_PAGING ;
 unsigned int AC97_STAC_PAGE0 ;
 unsigned int ARRAY_SIZE (int ) ;
 int EIO ;
 TYPE_1__ soc_ac97_ops ;
 int stac9766_reg ;
 int stub1 (int ,unsigned int,unsigned int) ;
 int stub2 (int ,unsigned int,unsigned int) ;

__attribute__((used)) static int stac9766_ac97_write(struct snd_soc_codec *codec, unsigned int reg,
          unsigned int val)
{
 u16 *cache = codec->reg_cache;

 if (reg > AC97_STAC_PAGE0) {
  stac9766_ac97_write(codec, AC97_INT_PAGING, 0);
  soc_ac97_ops.write(codec->ac97, reg, val);
  stac9766_ac97_write(codec, AC97_INT_PAGING, 1);
  return 0;
 }
 if (reg / 2 >= ARRAY_SIZE(stac9766_reg))
  return -EIO;

 soc_ac97_ops.write(codec->ac97, reg, val);
 cache[reg / 2] = val;
 return 0;
}
