
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_codec {int ac97; } ;
struct TYPE_2__ {int (* write ) (int ,unsigned int,unsigned int) ;} ;


 TYPE_1__ soc_ac97_ops ;
 int stub1 (int ,unsigned int,unsigned int) ;

__attribute__((used)) static int ac97_write(struct snd_soc_codec *codec, unsigned int reg,
 unsigned int val)
{
 soc_ac97_ops.write(codec->ac97, reg, val);
 return 0;
}
