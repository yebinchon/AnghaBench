
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu10k1 {int emu_lock; scalar_t__ port; } ;


 scalar_t__ DATA ;
 int HLIPH ;
 int HLIPL ;
 scalar_t__ PTR ;
 int outl (unsigned int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void snd_emu10k1_voice_half_loop_intr_ack(struct snd_emu10k1 *emu, unsigned int voicenum)
{
 unsigned long flags;

 spin_lock_irqsave(&emu->emu_lock, flags);

 if (voicenum >= 32) {
  outl(HLIPH << 16, emu->port + PTR);
  voicenum = 1 << (voicenum - 32);
 } else {
  outl(HLIPL << 16, emu->port + PTR);
  voicenum = 1 << voicenum;
 }
 outl(voicenum, emu->port + DATA);
 spin_unlock_irqrestore(&emu->emu_lock, flags);
}
