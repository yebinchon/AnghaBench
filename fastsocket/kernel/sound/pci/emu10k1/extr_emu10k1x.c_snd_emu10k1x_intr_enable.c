
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emu10k1x {int emu_lock; scalar_t__ port; } ;


 scalar_t__ INTE ;
 unsigned int inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_emu10k1x_intr_enable(struct emu10k1x *emu, unsigned int intrenb)
{
 unsigned long flags;
 unsigned int intr_enable;

 spin_lock_irqsave(&emu->emu_lock, flags);
 intr_enable = inl(emu->port + INTE) | intrenb;
 outl(intr_enable, emu->port + INTE);
 spin_unlock_irqrestore(&emu->emu_lock, flags);
}
