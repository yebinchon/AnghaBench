
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_clkdiv ) (struct snd_soc_dai*,int,int) ;} ;


 int EINVAL ;
 int stub1 (struct snd_soc_dai*,int,int) ;

int snd_soc_dai_set_clkdiv(struct snd_soc_dai *dai,
 int div_id, int div)
{
 if (dai->ops && dai->ops->set_clkdiv)
  return dai->ops->set_clkdiv(dai, div_id, div);
 else
  return -EINVAL;
}
