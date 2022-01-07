
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {struct nfs_fsinfo* rpc_resp; struct nfs_fh* rpc_argp; int * rpc_proc; } ;
struct rpc_clnt {int dummy; } ;
struct nfs_fsinfo {int fattr; } ;
struct nfs_fh {int dummy; } ;


 size_t NFS3PROC_FSINFO ;
 int dprintk (char*,...) ;
 int * nfs3_procedures ;
 int nfs_fattr_init (int ) ;
 int rpc_call_sync (struct rpc_clnt*,struct rpc_message*,int ) ;

__attribute__((used)) static int
do_proc_fsinfo(struct rpc_clnt *client, struct nfs_fh *fhandle,
   struct nfs_fsinfo *info)
{
 struct rpc_message msg = {
  .rpc_proc = &nfs3_procedures[NFS3PROC_FSINFO],
  .rpc_argp = fhandle,
  .rpc_resp = info,
 };
 int status;

 dprintk("NFS call  fsinfo\n");
 nfs_fattr_init(info->fattr);
 status = rpc_call_sync(client, &msg, 0);
 dprintk("NFS reply fsinfo: %d\n", status);
 return status;
}
