
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ca0106 {int emu_lock; scalar_t__ port; } ;


 scalar_t__ DATA ;
 scalar_t__ PTR ;
 unsigned int inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

unsigned int snd_ca0106_ptr_read(struct snd_ca0106 * emu,
       unsigned int reg,
       unsigned int chn)
{
 unsigned long flags;
 unsigned int regptr, val;

 regptr = (reg << 16) | chn;

 spin_lock_irqsave(&emu->emu_lock, flags);
 outl(regptr, emu->port + PTR);
 val = inl(emu->port + DATA);
 spin_unlock_irqrestore(&emu->emu_lock, flags);
 return val;
}
