
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emu10k1x {int emu_lock; scalar_t__ port; } ;


 scalar_t__ GPIO ;
 int outl (unsigned int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_emu10k1x_gpio_write(struct emu10k1x *emu, unsigned int value)
{
 unsigned long flags;

 spin_lock_irqsave(&emu->emu_lock, flags);
 outl(value, emu->port + GPIO);
 spin_unlock_irqrestore(&emu->emu_lock, flags);
}
