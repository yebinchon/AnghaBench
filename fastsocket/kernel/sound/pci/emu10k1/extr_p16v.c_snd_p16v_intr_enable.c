
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu10k1 {int emu_lock; scalar_t__ port; } ;


 scalar_t__ INTE2 ;
 unsigned int inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_p16v_intr_enable(struct snd_emu10k1 *emu, unsigned int intrenb)
{
 unsigned long flags;
 unsigned int enable;

 spin_lock_irqsave(&emu->emu_lock, flags);
 enable = inl(emu->port + INTE2) | intrenb;
 outl(enable, emu->port + INTE2);
 spin_unlock_irqrestore(&emu->emu_lock, flags);
}
