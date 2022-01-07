
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_rpc_endpoint {int read_q_lock; int read_q; } ;


 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline int ept_packet_available(struct msm_rpc_endpoint *ept)
{
 unsigned long flags;
 int ret;
 spin_lock_irqsave(&ept->read_q_lock, flags);
 ret = !list_empty(&ept->read_q);
 spin_unlock_irqrestore(&ept->read_q_lock, flags);
 return ret;
}
