
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct rpcbind_args {int r_owner; int r_addr; int r_netid; int r_vers; int r_prog; } ;
struct TYPE_4__ {TYPE_1__* rpc_proc; } ;
struct rpc_task {TYPE_2__ tk_msg; int tk_pid; } ;
struct rpc_rqst {int rq_snd_buf; struct rpc_task* rq_task; } ;
typedef void* __be32 ;
struct TYPE_3__ {int p_name; } ;


 int EIO ;
 int RPCBIND_MAXNETIDLEN ;
 int RPCBIND_MAXUADDRLEN ;
 int RPCB_MAXOWNERLEN ;
 int RPCB_program_sz ;
 int RPCB_version_sz ;
 int dprintk (char*,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ encode_rpcb_string (struct xdr_stream*,int ,int ) ;
 void* htonl (int ) ;
 scalar_t__ unlikely (int ) ;
 int xdr_init_encode (struct xdr_stream*,int *,void**) ;
 void** xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static int rpcb_enc_getaddr(struct rpc_rqst *req, __be32 *p,
       const struct rpcbind_args *rpcb)
{
 struct rpc_task *task = req->rq_task;
 struct xdr_stream xdr;

 dprintk("RPC: %5u encoding RPCB_%s call (%u, %u, '%s', '%s')\n",
   task->tk_pid, task->tk_msg.rpc_proc->p_name,
   rpcb->r_prog, rpcb->r_vers,
   rpcb->r_netid, rpcb->r_addr);

 xdr_init_encode(&xdr, &req->rq_snd_buf, p);

 p = xdr_reserve_space(&xdr,
   sizeof(__be32) * (RPCB_program_sz + RPCB_version_sz));
 if (unlikely(p == ((void*)0)))
  return -EIO;
 *p++ = htonl(rpcb->r_prog);
 *p = htonl(rpcb->r_vers);

 if (encode_rpcb_string(&xdr, rpcb->r_netid, RPCBIND_MAXNETIDLEN))
  return -EIO;
 if (encode_rpcb_string(&xdr, rpcb->r_addr, RPCBIND_MAXUADDRLEN))
  return -EIO;
 if (encode_rpcb_string(&xdr, rpcb->r_owner, RPCB_MAXOWNERLEN))
  return -EIO;

 return 0;
}
