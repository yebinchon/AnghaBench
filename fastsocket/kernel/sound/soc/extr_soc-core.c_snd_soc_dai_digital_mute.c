
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* digital_mute ) (struct snd_soc_dai*,int) ;} ;


 int EINVAL ;
 int stub1 (struct snd_soc_dai*,int) ;

int snd_soc_dai_digital_mute(struct snd_soc_dai *dai, int mute)
{
 if (dai->ops && dai->ops->digital_mute)
  return dai->ops->digital_mute(dai, mute);
 else
  return -EINVAL;
}
