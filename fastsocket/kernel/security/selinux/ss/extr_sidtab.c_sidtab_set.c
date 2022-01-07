
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sidtab {int lock; scalar_t__ shutdown; int next_sid; int nel; int htable; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void sidtab_set(struct sidtab *dst, struct sidtab *src)
{
 unsigned long flags;

 spin_lock_irqsave(&src->lock, flags);
 dst->htable = src->htable;
 dst->nel = src->nel;
 dst->next_sid = src->next_sid;
 dst->shutdown = 0;
 spin_unlock_irqrestore(&src->lock, flags);
}
