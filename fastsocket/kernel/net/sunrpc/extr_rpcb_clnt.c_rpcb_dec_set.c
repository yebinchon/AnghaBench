
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_4__ {TYPE_1__* rpc_proc; } ;
struct rpc_task {TYPE_2__ tk_msg; int tk_pid; } ;
struct rpc_rqst {int rq_rcv_buf; struct rpc_task* rq_task; } ;
typedef scalar_t__ __be32 ;
struct TYPE_3__ {int p_name; } ;


 int EIO ;
 int dprintk (char*,int ,int ,char*) ;
 scalar_t__ unlikely (int ) ;
 int xdr_init_decode (struct xdr_stream*,int *,scalar_t__*) ;
 scalar_t__* xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int rpcb_dec_set(struct rpc_rqst *req, __be32 *p,
   unsigned int *boolp)
{
 struct rpc_task *task = req->rq_task;
 struct xdr_stream xdr;

 xdr_init_decode(&xdr, &req->rq_rcv_buf, p);

 p = xdr_inline_decode(&xdr, sizeof(__be32));
 if (unlikely(p == ((void*)0)))
  return -EIO;

 *boolp = 0;
 if (*p)
  *boolp = 1;

 dprintk("RPC: %5u RPCB_%s call %s\n",
   task->tk_pid, task->tk_msg.rpc_proc->p_name,
   (*boolp ? "succeeded" : "failed"));
 return 0;
}
