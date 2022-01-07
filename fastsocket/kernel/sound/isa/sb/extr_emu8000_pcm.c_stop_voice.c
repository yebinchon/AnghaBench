
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu8k_pcm {int timer_lock; scalar_t__ timer_running; int timer; struct snd_emu8000* emu; } ;
struct snd_emu8000 {int dummy; } ;


 int EMU8000_DCYSUSV_WRITE (struct snd_emu8000*,int,int) ;
 int del_timer (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void stop_voice(struct snd_emu8k_pcm *rec, int ch)
{
 unsigned long flags;
 struct snd_emu8000 *hw = rec->emu;

 EMU8000_DCYSUSV_WRITE(hw, ch, 0x807F);


 spin_lock_irqsave(&rec->timer_lock, flags);
 if (rec->timer_running) {
  del_timer(&rec->timer);
  rec->timer_running = 0;
 }
 spin_unlock_irqrestore(&rec->timer_lock, flags);
}
