
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {struct nfs_fsstat* rpc_resp; struct nfs_fh* rpc_argp; int * rpc_proc; } ;
struct nfs_server {int client; } ;
struct nfs_fsstat {int fattr; } ;
struct nfs_fh {int dummy; } ;


 size_t NFS3PROC_FSSTAT ;
 int dprintk (char*,...) ;
 int * nfs3_procedures ;
 int nfs_fattr_init (int ) ;
 int rpc_call_sync (int ,struct rpc_message*,int ) ;

__attribute__((used)) static int
nfs3_proc_statfs(struct nfs_server *server, struct nfs_fh *fhandle,
   struct nfs_fsstat *stat)
{
 struct rpc_message msg = {
  .rpc_proc = &nfs3_procedures[NFS3PROC_FSSTAT],
  .rpc_argp = fhandle,
  .rpc_resp = stat,
 };
 int status;

 dprintk("NFS call  fsstat\n");
 nfs_fattr_init(stat->fattr);
 status = rpc_call_sync(server->client, &msg, 0);
 dprintk("NFS reply fsstat: %d\n", status);
 return status;
}
