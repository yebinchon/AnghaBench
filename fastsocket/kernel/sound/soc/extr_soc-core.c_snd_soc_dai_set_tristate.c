
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_tristate ) (struct snd_soc_dai*,int) ;} ;


 int EINVAL ;
 int stub1 (struct snd_soc_dai*,int) ;

int snd_soc_dai_set_tristate(struct snd_soc_dai *dai, int tristate)
{
 if (dai->ops && dai->ops->set_tristate)
  return dai->ops->set_tristate(dai, tristate);
 else
  return -EINVAL;
}
