
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_sysclk ) (struct snd_soc_dai*,int,unsigned int,int) ;} ;


 int EINVAL ;
 int stub1 (struct snd_soc_dai*,int,unsigned int,int) ;

int snd_soc_dai_set_sysclk(struct snd_soc_dai *dai, int clk_id,
 unsigned int freq, int dir)
{
 if (dai->ops && dai->ops->set_sysclk)
  return dai->ops->set_sysclk(dai, clk_id, freq, dir);
 else
  return -EINVAL;
}
