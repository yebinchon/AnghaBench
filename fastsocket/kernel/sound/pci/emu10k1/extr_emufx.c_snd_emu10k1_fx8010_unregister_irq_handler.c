
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_emu10k1_fx8010_irq {struct snd_emu10k1_fx8010_irq* next; } ;
struct TYPE_2__ {int irq_lock; struct snd_emu10k1_fx8010_irq* irq_handlers; } ;
struct snd_emu10k1 {TYPE_1__ fx8010; int * dsp_interrupt; } ;


 int INTE_FXDSPENABLE ;
 int kfree (struct snd_emu10k1_fx8010_irq*) ;
 int snd_emu10k1_intr_disable (struct snd_emu10k1*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int snd_emu10k1_fx8010_unregister_irq_handler(struct snd_emu10k1 *emu,
           struct snd_emu10k1_fx8010_irq *irq)
{
 struct snd_emu10k1_fx8010_irq *tmp;
 unsigned long flags;

 spin_lock_irqsave(&emu->fx8010.irq_lock, flags);
 if ((tmp = emu->fx8010.irq_handlers) == irq) {
  emu->fx8010.irq_handlers = tmp->next;
  if (emu->fx8010.irq_handlers == ((void*)0)) {
   snd_emu10k1_intr_disable(emu, INTE_FXDSPENABLE);
   emu->dsp_interrupt = ((void*)0);
  }
 } else {
  while (tmp && tmp->next != irq)
   tmp = tmp->next;
  if (tmp)
   tmp->next = tmp->next->next;
 }
 spin_unlock_irqrestore(&emu->fx8010.irq_lock, flags);
 kfree(irq);
 return 0;
}
