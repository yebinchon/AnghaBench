
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sscape_info {int lock; } ;


 int ODIE_ADDR ;
 int ODIE_DATA ;
 int PORT (int ) ;
 unsigned char inb (int ) ;
 int outb (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned char sscape_read(struct sscape_info *devc, int reg)
{
 unsigned long flags;
 unsigned char val;

 spin_lock_irqsave(&devc->lock,flags);
 outb(reg, PORT(ODIE_ADDR));
 val = inb(PORT(ODIE_DATA));
 spin_unlock_irqrestore(&devc->lock,flags);
 return val;
}
