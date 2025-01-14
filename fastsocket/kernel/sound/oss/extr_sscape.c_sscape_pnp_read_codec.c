
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; scalar_t__ codec; } ;
typedef TYPE_1__ sscape_info ;


 unsigned char inb (scalar_t__) ;
 int outb (unsigned char,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned char sscape_pnp_read_codec(sscape_info* devc, unsigned char reg)
{
 unsigned char res;
 unsigned long flags;

 spin_lock_irqsave(&devc->lock,flags);
 outb( reg, devc -> codec);
 res = inb (devc -> codec + 1);
 spin_unlock_irqrestore(&devc->lock,flags);
 return res;

}
