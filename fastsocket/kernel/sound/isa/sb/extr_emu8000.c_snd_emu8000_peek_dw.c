
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu8000 {unsigned int last_reg; int reg_lock; } ;


 int EMU8000_PTR (struct snd_emu8000*) ;
 int inw (unsigned int) ;
 int outw (unsigned short,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

unsigned int snd_emu8000_peek_dw(struct snd_emu8000 *emu, unsigned int port, unsigned int reg)
{
 unsigned short low;
 unsigned int res;
 unsigned long flags;
 spin_lock_irqsave(&emu->reg_lock, flags);
 if (reg != emu->last_reg) {
  outw((unsigned short)reg, EMU8000_PTR(emu));
  emu->last_reg = reg;
 }
 low = inw(port);
 res = low + (inw(port+2) << 16);
 spin_unlock_irqrestore(&emu->reg_lock, flags);
 return res;
}
