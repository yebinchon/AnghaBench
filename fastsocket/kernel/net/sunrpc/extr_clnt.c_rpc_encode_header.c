
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* rpc_proc; } ;
struct rpc_task {TYPE_2__ tk_msg; int tk_xprt; struct rpc_rqst* tk_rqstp; struct rpc_clnt* tk_client; } ;
struct rpc_rqst {TYPE_3__* rq_svec; int rq_slen; int rq_xid; } ;
struct rpc_clnt {int cl_vers; int cl_prog; } ;
typedef int __be32 ;
struct TYPE_6__ {int * iov_base; } ;
struct TYPE_4__ {int p_proc; } ;


 int RPC_CALL ;
 int RPC_VERSION ;
 void* htonl (int ) ;
 int * rpcauth_marshcred (struct rpc_task*,int *) ;
 int xdr_adjust_iovec (TYPE_3__*,int *) ;
 int * xprt_skip_transport_header (int ,int *) ;

__attribute__((used)) static __be32 *
rpc_encode_header(struct rpc_task *task)
{
 struct rpc_clnt *clnt = task->tk_client;
 struct rpc_rqst *req = task->tk_rqstp;
 __be32 *p = req->rq_svec[0].iov_base;



 p = xprt_skip_transport_header(task->tk_xprt, p);
 *p++ = req->rq_xid;
 *p++ = htonl(RPC_CALL);
 *p++ = htonl(RPC_VERSION);
 *p++ = htonl(clnt->cl_prog);
 *p++ = htonl(clnt->cl_vers);
 *p++ = htonl(task->tk_msg.rpc_proc->p_proc);
 p = rpcauth_marshcred(task, p);
 req->rq_slen = xdr_adjust_iovec(&req->rq_svec[0], p);
 return p;
}
