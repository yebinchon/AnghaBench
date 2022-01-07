
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer {int sticks; } ;
struct snd_emu10k1 {int reg_lock; scalar_t__ port; } ;


 int INTE_INTERVALTIMERENB ;
 scalar_t__ TIMER ;
 unsigned int TIMER_RATE_MASK ;
 int outw (unsigned int,scalar_t__) ;
 int snd_emu10k1_intr_enable (struct snd_emu10k1*,int ) ;
 struct snd_emu10k1* snd_timer_chip (struct snd_timer*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_emu10k1_timer_start(struct snd_timer *timer)
{
 struct snd_emu10k1 *emu;
 unsigned long flags;
 unsigned int delay;

 emu = snd_timer_chip(timer);
 delay = timer->sticks - 1;
 if (delay < 5 )
  delay = 5;
 spin_lock_irqsave(&emu->reg_lock, flags);
 snd_emu10k1_intr_enable(emu, INTE_INTERVALTIMERENB);
 outw(delay & TIMER_RATE_MASK, emu->port + TIMER);
 spin_unlock_irqrestore(&emu->reg_lock, flags);
 return 0;
}
