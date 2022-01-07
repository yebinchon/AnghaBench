
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count; int fragsize; int sample_rate; int dma_bytes_per_sample; scalar_t__ stopped; int ready; scalar_t__ mapped; } ;
struct au1550_state {TYPE_1__ dma_dac; scalar_t__ no_vra; int lock; } ;


 int EBUSY ;
 int ERESTARTSYS ;
 int au1550_delay (int) ;
 int current ;
 scalar_t__ signal_pending (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
drain_dac(struct au1550_state *s, int nonblock)
{
 unsigned long flags;
 int count, tmo;

 if (s->dma_dac.mapped || !s->dma_dac.ready || s->dma_dac.stopped)
  return 0;

 for (;;) {
  spin_lock_irqsave(&s->lock, flags);
  count = s->dma_dac.count;
  spin_unlock_irqrestore(&s->lock, flags);
  if (count <= s->dma_dac.fragsize)
   break;
  if (signal_pending(current))
   break;
  if (nonblock)
   return -EBUSY;
  tmo = 1000 * count / (s->no_vra ?
          48000 : s->dma_dac.sample_rate);
  tmo /= s->dma_dac.dma_bytes_per_sample;
  au1550_delay(tmo);
 }
 if (signal_pending(current))
  return -ERESTARTSYS;
 return 0;
}
