
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ sb_devc ;


 int MIXER_ADDR ;
 int MIXER_DATA ;
 unsigned int inb (int ) ;
 int outb (unsigned char,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static unsigned int ess_identify (sb_devc * devc)
{
 unsigned int val;
 unsigned long flags;

 spin_lock_irqsave(&devc->lock, flags);
 outb(((unsigned char) (0x40 & 0xff)), MIXER_ADDR);

 udelay(20);
 val = inb(MIXER_DATA) << 8;
 udelay(20);
 val |= inb(MIXER_DATA);
 udelay(20);
 spin_unlock_irqrestore(&devc->lock, flags);

 return val;
}
