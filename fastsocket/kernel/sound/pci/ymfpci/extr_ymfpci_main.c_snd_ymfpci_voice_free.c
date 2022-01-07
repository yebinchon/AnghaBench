
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ymfpci_voice {int number; int * interrupt; TYPE_1__* ypcm; scalar_t__ midi; scalar_t__ synth; scalar_t__ pcm; scalar_t__ use; } ;
struct snd_ymfpci {int src441_used; int voice_lock; } ;
struct TYPE_2__ {scalar_t__ use_441_slot; } ;


 int EINVAL ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_ymfpci_hw_stop (struct snd_ymfpci*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_ymfpci_voice_free(struct snd_ymfpci *chip, struct snd_ymfpci_voice *pvoice)
{
 unsigned long flags;

 if (snd_BUG_ON(!pvoice))
  return -EINVAL;
 snd_ymfpci_hw_stop(chip);
 spin_lock_irqsave(&chip->voice_lock, flags);
 if (pvoice->number == chip->src441_used) {
  chip->src441_used = -1;
  pvoice->ypcm->use_441_slot = 0;
 }
 pvoice->use = pvoice->pcm = pvoice->synth = pvoice->midi = 0;
 pvoice->ypcm = ((void*)0);
 pvoice->interrupt = ((void*)0);
 spin_unlock_irqrestore(&chip->voice_lock, flags);
 return 0;
}
