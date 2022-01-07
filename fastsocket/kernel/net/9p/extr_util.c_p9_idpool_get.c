
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_idpool {int lock; int pool; } ;


 int EAGAIN ;
 int GFP_KERNEL ;
 int P9_DEBUG_MUX ;
 int P9_DPRINTK (int ,char*,int,struct p9_idpool*) ;
 int idr_get_new (int *,struct p9_idpool*,int*) ;
 scalar_t__ idr_pre_get (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int p9_idpool_get(struct p9_idpool *p)
{
 int i = 0;
 int error;
 unsigned long flags;

retry:
 if (idr_pre_get(&p->pool, GFP_KERNEL) == 0)
  return 0;

 spin_lock_irqsave(&p->lock, flags);


 error = idr_get_new(&p->pool, p, &i);
 spin_unlock_irqrestore(&p->lock, flags);

 if (error == -EAGAIN)
  goto retry;
 else if (error)
  return -1;

 P9_DPRINTK(P9_DEBUG_MUX, " id %d pool %p\n", i, p);
 return i;
}
