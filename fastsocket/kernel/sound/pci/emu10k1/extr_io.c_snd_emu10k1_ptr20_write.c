
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu10k1 {int emu_lock; scalar_t__ port; } ;


 scalar_t__ DATA ;
 scalar_t__ PTR ;
 int outl (unsigned int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void snd_emu10k1_ptr20_write(struct snd_emu10k1 *emu,
       unsigned int reg,
       unsigned int chn,
       unsigned int data)
{
 unsigned int regptr;
 unsigned long flags;

 regptr = (reg << 16) | chn;

 spin_lock_irqsave(&emu->emu_lock, flags);
 outl(regptr, emu->port + 0x20 + PTR);
 outl(data, emu->port + 0x20 + DATA);
 spin_unlock_irqrestore(&emu->emu_lock, flags);
}
