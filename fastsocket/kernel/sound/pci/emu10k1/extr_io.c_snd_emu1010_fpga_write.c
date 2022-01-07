
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_emu10k1 {int emu_lock; scalar_t__ port; } ;


 scalar_t__ A_IOCFG ;
 int outl (int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

int snd_emu1010_fpga_write(struct snd_emu10k1 * emu, u32 reg, u32 value)
{
 unsigned long flags;

 if (reg > 0x3f)
  return 1;
 reg += 0x40;
 if (value < 0 || value > 0x3f)
  return 1;
 spin_lock_irqsave(&emu->emu_lock, flags);
 outl(reg, emu->port + A_IOCFG);
 udelay(10);
 outl(reg | 0x80, emu->port + A_IOCFG);
 udelay(10);
 outl(value, emu->port + A_IOCFG);
 udelay(10);
 outl(value | 0x80 , emu->port + A_IOCFG);
 spin_unlock_irqrestore(&emu->emu_lock, flags);

 return 0;
}
