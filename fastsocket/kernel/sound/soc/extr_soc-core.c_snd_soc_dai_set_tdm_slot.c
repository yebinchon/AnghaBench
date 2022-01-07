
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_tdm_slot ) (struct snd_soc_dai*,unsigned int,unsigned int,int,int) ;} ;


 int EINVAL ;
 int stub1 (struct snd_soc_dai*,unsigned int,unsigned int,int,int) ;

int snd_soc_dai_set_tdm_slot(struct snd_soc_dai *dai,
 unsigned int tx_mask, unsigned int rx_mask, int slots, int slot_width)
{
 if (dai->ops && dai->ops->set_tdm_slot)
  return dai->ops->set_tdm_slot(dai, tx_mask, rx_mask,
    slots, slot_width);
 else
  return -EINVAL;
}
