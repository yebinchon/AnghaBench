
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_idpool {int lock; int pool; } ;


 int P9_DEBUG_MUX ;
 int P9_DPRINTK (int ,char*,int,struct p9_idpool*) ;
 int idr_remove (int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void p9_idpool_put(int id, struct p9_idpool *p)
{
 unsigned long flags;

 P9_DPRINTK(P9_DEBUG_MUX, " id %d pool %p\n", id, p);

 spin_lock_irqsave(&p->lock, flags);
 idr_remove(&p->pool, id);
 spin_unlock_irqrestore(&p->lock, flags);
}
