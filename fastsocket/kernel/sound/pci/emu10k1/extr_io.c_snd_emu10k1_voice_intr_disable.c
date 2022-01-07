
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu10k1 {int emu_lock; scalar_t__ port; } ;


 int CLIEH ;
 int CLIEL ;
 scalar_t__ DATA ;
 scalar_t__ PTR ;
 unsigned int inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void snd_emu10k1_voice_intr_disable(struct snd_emu10k1 *emu, unsigned int voicenum)
{
 unsigned long flags;
 unsigned int val;

 spin_lock_irqsave(&emu->emu_lock, flags);

 if (voicenum >= 32) {
  outl(CLIEH << 16, emu->port + PTR);
  val = inl(emu->port + DATA);
  val &= ~(1 << (voicenum - 32));
 } else {
  outl(CLIEL << 16, emu->port + PTR);
  val = inl(emu->port + DATA);
  val &= ~(1 << voicenum);
 }
 outl(val, emu->port + DATA);
 spin_unlock_irqrestore(&emu->emu_lock, flags);
}
