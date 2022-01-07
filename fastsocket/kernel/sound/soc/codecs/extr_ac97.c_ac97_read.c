
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_codec {int ac97; } ;
struct TYPE_2__ {unsigned int (* read ) (int ,unsigned int) ;} ;


 TYPE_1__ soc_ac97_ops ;
 unsigned int stub1 (int ,unsigned int) ;

__attribute__((used)) static unsigned int ac97_read(struct snd_soc_codec *codec,
 unsigned int reg)
{
 return soc_ac97_ops.read(codec->ac97, reg);
}
