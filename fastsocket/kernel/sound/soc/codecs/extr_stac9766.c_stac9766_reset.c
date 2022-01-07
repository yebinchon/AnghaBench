
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_codec {int ac97; } ;
struct TYPE_2__ {int (* warm_reset ) (int ) ;int (* reset ) (int ) ;} ;


 int EIO ;
 TYPE_1__ soc_ac97_ops ;
 scalar_t__ stac9766_ac97_read (struct snd_soc_codec*,int ) ;
 scalar_t__* stac9766_reg ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 int stub3 (int ) ;

__attribute__((used)) static int stac9766_reset(struct snd_soc_codec *codec, int try_warm)
{
 if (try_warm && soc_ac97_ops.warm_reset) {
  soc_ac97_ops.warm_reset(codec->ac97);
  if (stac9766_ac97_read(codec, 0) == stac9766_reg[0])
   return 1;
 }

 soc_ac97_ops.reset(codec->ac97);
 if (soc_ac97_ops.warm_reset)
  soc_ac97_ops.warm_reset(codec->ac97);
 if (stac9766_ac97_read(codec, 0) != stac9766_reg[0])
  return -EIO;
 return 0;
}
