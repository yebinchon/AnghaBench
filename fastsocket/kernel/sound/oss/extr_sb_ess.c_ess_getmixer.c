
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
typedef TYPE_1__ sb_devc ;


 int MIXER_ADDR ;
 int MIXER_DATA ;
 unsigned int ess_read (TYPE_1__*,unsigned int) ;
 unsigned int inb (int ) ;
 int outb (unsigned char,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

unsigned int ess_getmixer (sb_devc * devc, unsigned int port)
{
 unsigned int val;
 unsigned long flags;

 spin_lock_irqsave(&devc->lock, flags);

 if (port >= 0xa0) {
  val = ess_read (devc, port);
 } else {
  outb(((unsigned char) (port & 0xff)), MIXER_ADDR);

  udelay(20);
  val = inb(MIXER_DATA);
  udelay(20);
 }
 spin_unlock_irqrestore(&devc->lock, flags);

 return val;
}
