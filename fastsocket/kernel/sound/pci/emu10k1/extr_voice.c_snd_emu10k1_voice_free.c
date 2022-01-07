
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu10k1_voice {int number; int * epcm; scalar_t__ efx; scalar_t__ midi; scalar_t__ synth; scalar_t__ pcm; scalar_t__ use; int * interrupt; } ;
struct snd_emu10k1 {int voice_lock; } ;


 int EINVAL ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_emu10k1_voice_init (struct snd_emu10k1*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int snd_emu10k1_voice_free(struct snd_emu10k1 *emu,
      struct snd_emu10k1_voice *pvoice)
{
 unsigned long flags;

 if (snd_BUG_ON(!pvoice))
  return -EINVAL;
 spin_lock_irqsave(&emu->voice_lock, flags);
 pvoice->interrupt = ((void*)0);
 pvoice->use = pvoice->pcm = pvoice->synth = pvoice->midi = pvoice->efx = 0;
 pvoice->epcm = ((void*)0);
 snd_emu10k1_voice_init(emu, pvoice->number);
 spin_unlock_irqrestore(&emu->voice_lock, flags);
 return 0;
}
