
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct rpcbind_args {int r_port; int r_prot; int r_vers; int r_prog; } ;
struct TYPE_4__ {TYPE_1__* rpc_proc; } ;
struct rpc_task {TYPE_2__ tk_msg; int tk_pid; } ;
struct rpc_rqst {int rq_snd_buf; struct rpc_task* rq_task; } ;
typedef void* __be32 ;
struct TYPE_3__ {int p_name; } ;


 int EIO ;
 int RPCB_mappingargs_sz ;
 int dprintk (char*,int ,int ,int ,int ,int ,int ) ;
 void* htonl (int ) ;
 scalar_t__ unlikely (int ) ;
 int xdr_init_encode (struct xdr_stream*,int *,void**) ;
 void** xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static int rpcb_enc_mapping(struct rpc_rqst *req, __be32 *p,
       const struct rpcbind_args *rpcb)
{
 struct rpc_task *task = req->rq_task;
 struct xdr_stream xdr;

 dprintk("RPC: %5u encoding PMAP_%s call (%u, %u, %d, %u)\n",
   task->tk_pid, task->tk_msg.rpc_proc->p_name,
   rpcb->r_prog, rpcb->r_vers, rpcb->r_prot, rpcb->r_port);

 xdr_init_encode(&xdr, &req->rq_snd_buf, p);

 p = xdr_reserve_space(&xdr, sizeof(__be32) * RPCB_mappingargs_sz);
 if (unlikely(p == ((void*)0)))
  return -EIO;

 *p++ = htonl(rpcb->r_prog);
 *p++ = htonl(rpcb->r_vers);
 *p++ = htonl(rpcb->r_prot);
 *p = htonl(rpcb->r_port);

 return 0;
}
