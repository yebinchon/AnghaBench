
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sidtab {int shutdown; int lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void sidtab_shutdown(struct sidtab *s)
{
 unsigned long flags;

 spin_lock_irqsave(&s->lock, flags);
 s->shutdown = 1;
 spin_unlock_irqrestore(&s->lock, flags);
}
