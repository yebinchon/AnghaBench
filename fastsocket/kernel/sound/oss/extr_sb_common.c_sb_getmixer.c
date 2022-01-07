
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ model; int lock; } ;
typedef TYPE_1__ sb_devc ;


 scalar_t__ MDL_ESS ;
 int MIXER_ADDR ;
 int MIXER_DATA ;
 unsigned int ess_getmixer (TYPE_1__*,unsigned int) ;
 unsigned int inb (int ) ;
 int outb (unsigned char,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

unsigned int sb_getmixer(sb_devc * devc, unsigned int port)
{
 unsigned int val;
 unsigned long flags;

 if (devc->model == MDL_ESS) return ess_getmixer (devc, port);

 spin_lock_irqsave(&devc->lock, flags);

 outb(((unsigned char) (port & 0xff)), MIXER_ADDR);
 udelay(20);
 val = inb(MIXER_DATA);
 udelay(20);

 spin_unlock_irqrestore(&devc->lock, flags);

 return val;
}
