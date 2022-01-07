
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_codec {int ac97; } ;
struct TYPE_2__ {int (* reset ) (int ) ;} ;


 int EIO ;
 scalar_t__ ac97_read (struct snd_soc_codec*,int ) ;
 TYPE_1__ soc_ac97_ops ;
 int stub1 (int ) ;
 scalar_t__* wm9705_reg ;

__attribute__((used)) static int wm9705_reset(struct snd_soc_codec *codec)
{
 if (soc_ac97_ops.reset) {
  soc_ac97_ops.reset(codec->ac97);
  if (ac97_read(codec, 0) == wm9705_reg[0])
   return 0;
 }

 return -EIO;
}
