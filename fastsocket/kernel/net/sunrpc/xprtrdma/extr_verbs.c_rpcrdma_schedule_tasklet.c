
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcrdma_rep {int rr_list; } ;


 int list_add_tail (int *,int *) ;
 int rpcrdma_tasklet_g ;
 int rpcrdma_tasklets_g ;
 int rpcrdma_tk_lock_g ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static inline void
rpcrdma_schedule_tasklet(struct rpcrdma_rep *rep)
{
 unsigned long flags;

 spin_lock_irqsave(&rpcrdma_tk_lock_g, flags);
 list_add_tail(&rep->rr_list, &rpcrdma_tasklets_g);
 spin_unlock_irqrestore(&rpcrdma_tk_lock_g, flags);
 tasklet_schedule(&rpcrdma_tasklet_g);
}
