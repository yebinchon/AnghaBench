
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u16 ;
struct snd_soc_codec {unsigned int* reg_cache; int ac97; } ;
struct TYPE_2__ {unsigned int (* read ) (int ,unsigned int) ;} ;


 unsigned int AC97_GPIO_STATUS ;
 unsigned int AC97_INT_PAGING ;
 unsigned int AC97_RESET ;
 unsigned int AC97_STAC_PAGE0 ;
 unsigned int AC97_VENDOR_ID1 ;
 unsigned int AC97_VENDOR_ID2 ;
 unsigned int ARRAY_SIZE (int ) ;
 unsigned int EIO ;
 TYPE_1__ soc_ac97_ops ;
 int stac9766_ac97_write (struct snd_soc_codec*,unsigned int,int) ;
 int stac9766_reg ;
 unsigned int stub1 (int ,unsigned int) ;
 unsigned int stub2 (int ,unsigned int) ;

__attribute__((used)) static unsigned int stac9766_ac97_read(struct snd_soc_codec *codec,
           unsigned int reg)
{
 u16 val = 0, *cache = codec->reg_cache;

 if (reg > AC97_STAC_PAGE0) {
  stac9766_ac97_write(codec, AC97_INT_PAGING, 0);
  val = soc_ac97_ops.read(codec->ac97, reg - AC97_STAC_PAGE0);
  stac9766_ac97_write(codec, AC97_INT_PAGING, 1);
  return val;
 }
 if (reg / 2 >= ARRAY_SIZE(stac9766_reg))
  return -EIO;

 if (reg == AC97_RESET || reg == AC97_GPIO_STATUS ||
  reg == AC97_INT_PAGING || reg == AC97_VENDOR_ID1 ||
  reg == AC97_VENDOR_ID2) {

  val = soc_ac97_ops.read(codec->ac97, reg);
  return val;
 }
 return cache[reg / 2];
}
