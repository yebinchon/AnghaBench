
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int refcount; } ;
struct TYPE_4__ {TYPE_1__ xpt_ref; } ;
struct svcxprt_rdma {int sc_dto_q; TYPE_2__ sc_xprt; int sc_flags; } ;
struct ib_cq {int dummy; } ;


 int RDMAXPRT_SQ_PENDING ;
 scalar_t__ atomic_read (int *) ;
 int dto_lock ;
 int dto_tasklet ;
 int dto_xprt_q ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int svc_xprt_get (TYPE_2__*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void sq_comp_handler(struct ib_cq *cq, void *cq_context)
{
 struct svcxprt_rdma *xprt = cq_context;
 unsigned long flags;


 if (atomic_read(&xprt->sc_xprt.xpt_ref.refcount)==0)
  return;






 set_bit(RDMAXPRT_SQ_PENDING, &xprt->sc_flags);





 spin_lock_irqsave(&dto_lock, flags);
 if (list_empty(&xprt->sc_dto_q)) {
  svc_xprt_get(&xprt->sc_xprt);
  list_add_tail(&xprt->sc_dto_q, &dto_xprt_q);
 }
 spin_unlock_irqrestore(&dto_lock, flags);


 tasklet_schedule(&dto_tasklet);
}
