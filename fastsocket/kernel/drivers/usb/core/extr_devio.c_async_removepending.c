
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dev_state {int lock; } ;
struct async {int asynclist; struct dev_state* ps; } ;


 int list_del_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void async_removepending(struct async *as)
{
 struct dev_state *ps = as->ps;
 unsigned long flags;

 spin_lock_irqsave(&ps->lock, flags);
 list_del_init(&as->asynclist);
 spin_unlock_irqrestore(&ps->lock, flags);
}
