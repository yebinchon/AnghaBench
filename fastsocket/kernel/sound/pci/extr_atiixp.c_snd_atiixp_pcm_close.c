
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct atiixp_dma {scalar_t__ opened; int * substream; TYPE_1__* ops; } ;
struct atiixp {int reg_lock; } ;
struct TYPE_2__ {int (* enable_dma ) (struct atiixp*,int ) ;} ;


 int EINVAL ;
 scalar_t__ snd_BUG_ON (int) ;
 struct atiixp* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct atiixp*,int ) ;

__attribute__((used)) static int snd_atiixp_pcm_close(struct snd_pcm_substream *substream,
    struct atiixp_dma *dma)
{
 struct atiixp *chip = snd_pcm_substream_chip(substream);

 if (snd_BUG_ON(!dma->ops || !dma->ops->enable_dma))
  return -EINVAL;
 spin_lock_irq(&chip->reg_lock);
 dma->ops->enable_dma(chip, 0);
 spin_unlock_irq(&chip->reg_lock);
 dma->substream = ((void*)0);
 dma->opened = 0;
 return 0;
}
