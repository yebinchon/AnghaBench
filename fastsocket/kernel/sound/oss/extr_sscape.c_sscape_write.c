
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sscape_info {int lock; } ;


 int __sscape_write (int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sscape_write(struct sscape_info *devc, int reg, int data)
{
 unsigned long flags;

 spin_lock_irqsave(&devc->lock,flags);
 __sscape_write(reg, data);
 spin_unlock_irqrestore(&devc->lock,flags);
}
