
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ length; } ;
struct rpcrdma_req {int * rl_reply; struct rpcrdma_buffer* rl_buffer; TYPE_1__ rl_iov; } ;
struct rpcrdma_buffer {size_t rb_recv_index; size_t rb_max_requests; int rb_lock; int ** rb_recv_bufs; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
rpcrdma_recv_buffer_get(struct rpcrdma_req *req)
{
 struct rpcrdma_buffer *buffers = req->rl_buffer;
 unsigned long flags;

 if (req->rl_iov.length == 0)
  buffers = ((struct rpcrdma_req *) buffers)->rl_buffer;
 spin_lock_irqsave(&buffers->rb_lock, flags);
 if (buffers->rb_recv_index < buffers->rb_max_requests) {
  req->rl_reply = buffers->rb_recv_bufs[buffers->rb_recv_index];
  buffers->rb_recv_bufs[buffers->rb_recv_index++] = ((void*)0);
 }
 spin_unlock_irqrestore(&buffers->rb_lock, flags);
}
