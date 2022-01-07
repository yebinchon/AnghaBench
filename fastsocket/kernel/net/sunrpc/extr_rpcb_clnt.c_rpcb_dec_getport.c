
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct rpcbind_args {unsigned long r_port; } ;
struct TYPE_4__ {TYPE_1__* rpc_proc; } ;
struct rpc_task {TYPE_2__ tk_msg; int tk_pid; } ;
struct rpc_rqst {int rq_rcv_buf; struct rpc_task* rq_task; } ;
typedef int __be32 ;
struct TYPE_3__ {int p_name; } ;


 int EIO ;
 unsigned long USHORT_MAX ;
 int dprintk (char*,int ,int ,unsigned long) ;
 unsigned long ntohl (int ) ;
 scalar_t__ unlikely (int) ;
 int xdr_init_decode (struct xdr_stream*,int *,int *) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int rpcb_dec_getport(struct rpc_rqst *req, __be32 *p,
       struct rpcbind_args *rpcb)
{
 struct rpc_task *task = req->rq_task;
 struct xdr_stream xdr;
 unsigned long port;

 xdr_init_decode(&xdr, &req->rq_rcv_buf, p);

 rpcb->r_port = 0;

 p = xdr_inline_decode(&xdr, sizeof(__be32));
 if (unlikely(p == ((void*)0)))
  return -EIO;

 port = ntohl(*p);
 dprintk("RPC: %5u PMAP_%s result: %lu\n", task->tk_pid,
   task->tk_msg.rpc_proc->p_name, port);
 if (unlikely(port > USHORT_MAX))
  return -EIO;

 rpcb->r_port = port;
 return 0;
}
