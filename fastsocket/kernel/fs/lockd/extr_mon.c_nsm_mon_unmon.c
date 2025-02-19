
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct rpc_message {int * rpc_proc; struct nsm_res* rpc_resp; struct nsm_args* rpc_argp; } ;
struct rpc_clnt {int * cl_procinfo; } ;
struct nsm_res {int dummy; } ;
struct nsm_handle {int sm_mon_name; int sm_priv; } ;
struct nsm_args {int vers; int mon_name; int proc; int prog; int * priv; } ;


 scalar_t__ IS_ERR (struct rpc_clnt*) ;
 int NLMPROC_NSM_NOTIFY ;
 int NLM_PROGRAM ;
 int PTR_ERR (struct rpc_clnt*) ;
 int dprintk (char*,int) ;
 int memset (struct nsm_res*,int ,int) ;
 struct rpc_clnt* nsm_create () ;
 int rpc_call_sync (struct rpc_clnt*,struct rpc_message*,int ) ;
 int rpc_shutdown_client (struct rpc_clnt*) ;

__attribute__((used)) static int nsm_mon_unmon(struct nsm_handle *nsm, u32 proc, struct nsm_res *res)
{
 struct rpc_clnt *clnt;
 int status;
 struct nsm_args args = {
  .priv = &nsm->sm_priv,
  .prog = NLM_PROGRAM,
  .vers = 3,
  .proc = NLMPROC_NSM_NOTIFY,
  .mon_name = nsm->sm_mon_name,
 };
 struct rpc_message msg = {
  .rpc_argp = &args,
  .rpc_resp = res,
 };

 clnt = nsm_create();
 if (IS_ERR(clnt)) {
  status = PTR_ERR(clnt);
  dprintk("lockd: failed to create NSM upcall transport, "
    "status=%d\n", status);
  goto out;
 }

 memset(res, 0, sizeof(*res));

 msg.rpc_proc = &clnt->cl_procinfo[proc];
 status = rpc_call_sync(clnt, &msg, 0);
 if (status < 0)
  dprintk("lockd: NSM upcall RPC failed, status=%d\n",
    status);
 else
  status = 0;
 rpc_shutdown_client(clnt);
 out:
 return status;
}
