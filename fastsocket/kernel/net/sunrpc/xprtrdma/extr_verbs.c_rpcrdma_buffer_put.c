
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rpcrdma_req {scalar_t__ rl_nchunks; TYPE_3__* rl_segments; TYPE_1__* rl_reply; scalar_t__ rl_niovs; struct rpcrdma_buffer* rl_buffer; } ;
struct rpcrdma_mw {int mw_list; } ;
struct rpcrdma_ia {int ri_memreg_strategy; } ;
struct rpcrdma_buffer {size_t rb_send_index; size_t rb_recv_index; int rb_lock; int rb_mws; TYPE_1__** rb_recv_bufs; struct rpcrdma_req** rb_send_bufs; } ;
struct TYPE_5__ {struct rpcrdma_mw* rl_mw; } ;
struct TYPE_6__ {TYPE_2__ mr_chunk; } ;
struct TYPE_4__ {int * rr_func; int rr_unbind; } ;


 int BUG_ON (int) ;

 int RPCRDMA_MAX_SEGS ;



 int init_waitqueue_head (int *) ;
 int list_add_tail (int *,int *) ;
 struct rpcrdma_ia* rdmab_to_ia (struct rpcrdma_buffer*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
rpcrdma_buffer_put(struct rpcrdma_req *req)
{
 struct rpcrdma_buffer *buffers = req->rl_buffer;
 struct rpcrdma_ia *ia = rdmab_to_ia(buffers);
 int i;
 unsigned long flags;

 BUG_ON(req->rl_nchunks != 0);
 spin_lock_irqsave(&buffers->rb_lock, flags);
 buffers->rb_send_bufs[--buffers->rb_send_index] = req;
 req->rl_niovs = 0;
 if (req->rl_reply) {
  buffers->rb_recv_bufs[--buffers->rb_recv_index] = req->rl_reply;
  init_waitqueue_head(&req->rl_reply->rr_unbind);
  req->rl_reply->rr_func = ((void*)0);
  req->rl_reply = ((void*)0);
 }
 switch (ia->ri_memreg_strategy) {
 case 131:
 case 128:
 case 129:
 case 130:




  i = 1;
  do {
   struct rpcrdma_mw **mw;
   mw = &req->rl_segments[i].mr_chunk.rl_mw;
   list_add_tail(&(*mw)->mw_list, &buffers->rb_mws);
   *mw = ((void*)0);
  } while (++i < RPCRDMA_MAX_SEGS);
  list_add_tail(&req->rl_segments[0].mr_chunk.rl_mw->mw_list,
     &buffers->rb_mws);
  req->rl_segments[0].mr_chunk.rl_mw = ((void*)0);
  break;
 default:
  break;
 }
 spin_unlock_irqrestore(&buffers->rb_lock, flags);
}
