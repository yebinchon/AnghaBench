
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {struct rpc_cred* rpc_cred; struct nfs_client* rpc_argp; int * rpc_proc; } ;
struct rpc_cred {int dummy; } ;
struct nfs_client {int cl_rpcclient; int cl_count; } ;
struct nfs4_renewdata {int timestamp; struct nfs_client* client; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t NFSPROC4_CLNT_RENEW ;
 int RPC_TASK_SOFT ;
 int atomic_inc_not_zero (int *) ;
 int jiffies ;
 struct nfs4_renewdata* kmalloc (int,int ) ;
 int * nfs4_procedures ;
 int nfs4_renew_ops ;
 int rpc_call_async (int ,struct rpc_message*,int ,int *,struct nfs4_renewdata*) ;

__attribute__((used)) static int nfs4_proc_async_renew(struct nfs_client *clp, struct rpc_cred *cred, unsigned renew_flags)
{
 struct rpc_message msg = {
  .rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_RENEW],
  .rpc_argp = clp,
  .rpc_cred = cred,
 };
 struct nfs4_renewdata *data;

 if (renew_flags == 0)
  return 0;
 if (!atomic_inc_not_zero(&clp->cl_count))
  return -EIO;
 data = kmalloc(sizeof(*data), GFP_KERNEL);
 if (data == ((void*)0))
  return -ENOMEM;
 data->client = clp;
 data->timestamp = jiffies;
 return rpc_call_async(clp->cl_rpcclient, &msg, RPC_TASK_SOFT,
   &nfs4_renew_ops, data);
}
