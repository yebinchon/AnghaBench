
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
 int ess_setmixer (TYPE_1__*,unsigned int,unsigned int) ;
 int outb (unsigned char,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

void sb_setmixer(sb_devc * devc, unsigned int port, unsigned int value)
{
 unsigned long flags;

 if (devc->model == MDL_ESS) {
  ess_setmixer (devc, port, value);
  return;
 }

 spin_lock_irqsave(&devc->lock, flags);

 outb(((unsigned char) (port & 0xff)), MIXER_ADDR);
 udelay(20);
 outb(((unsigned char) (value & 0xff)), MIXER_DATA);
 udelay(20);

 spin_unlock_irqrestore(&devc->lock, flags);
}
