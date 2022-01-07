
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcrdma_rep {int * rr_func; struct rpcrdma_buffer* rr_buffer; } ;
struct rpcrdma_buffer {size_t rb_recv_index; int rb_lock; struct rpcrdma_rep** rb_recv_bufs; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
rpcrdma_recv_buffer_put(struct rpcrdma_rep *rep)
{
 struct rpcrdma_buffer *buffers = rep->rr_buffer;
 unsigned long flags;

 rep->rr_func = ((void*)0);
 spin_lock_irqsave(&buffers->rb_lock, flags);
 buffers->rb_recv_bufs[--buffers->rb_recv_index] = rep;
 spin_unlock_irqrestore(&buffers->rb_lock, flags);
}
