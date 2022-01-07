
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu10k1 {int emu_lock; scalar_t__ port; } ;


 scalar_t__ DATA ;
 scalar_t__ PTR ;
 int SOLEH ;
 int SOLEL ;
 unsigned int inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void snd_emu10k1_voice_clear_loop_stop(struct snd_emu10k1 *emu, unsigned int voicenum)
{
 unsigned long flags;
 unsigned int sol;

 spin_lock_irqsave(&emu->emu_lock, flags);

 if (voicenum >= 32) {
  outl(SOLEH << 16, emu->port + PTR);
  sol = inl(emu->port + DATA);
  sol &= ~(1 << (voicenum - 32));
 } else {
  outl(SOLEL << 16, emu->port + PTR);
  sol = inl(emu->port + DATA);
  sol &= ~(1 << voicenum);
 }
 outl(sol, emu->port + DATA);
 spin_unlock_irqrestore(&emu->emu_lock, flags);
}
