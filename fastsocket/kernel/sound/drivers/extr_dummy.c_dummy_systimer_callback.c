
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dummy_systimer_pcm {int elapsed; int substream; int lock; } ;


 int dummy_systimer_rearm (struct dummy_systimer_pcm*) ;
 int dummy_systimer_update (struct dummy_systimer_pcm*) ;
 int snd_pcm_period_elapsed (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void dummy_systimer_callback(unsigned long data)
{
 struct dummy_systimer_pcm *dpcm = (struct dummy_systimer_pcm *)data;
 unsigned long flags;
 int elapsed = 0;

 spin_lock_irqsave(&dpcm->lock, flags);
 dummy_systimer_update(dpcm);
 dummy_systimer_rearm(dpcm);
 elapsed = dpcm->elapsed;
 dpcm->elapsed = 0;
 spin_unlock_irqrestore(&dpcm->lock, flags);
 if (elapsed)
  snd_pcm_period_elapsed(dpcm->substream);
}
