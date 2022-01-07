
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {struct nfs_fattr* rpc_resp; struct nfs_fh* rpc_argp; int * rpc_proc; } ;
struct nfs_server {int client; } ;
struct nfs_fh {int dummy; } ;
struct nfs_fattr {int dummy; } ;


 size_t NFSPROC_GETATTR ;
 int dprintk (char*,...) ;
 int nfs_fattr_init (struct nfs_fattr*) ;
 int * nfs_procedures ;
 int rpc_call_sync (int ,struct rpc_message*,int ) ;

__attribute__((used)) static int
nfs_proc_getattr(struct nfs_server *server, struct nfs_fh *fhandle,
  struct nfs_fattr *fattr)
{
 struct rpc_message msg = {
  .rpc_proc = &nfs_procedures[NFSPROC_GETATTR],
  .rpc_argp = fhandle,
  .rpc_resp = fattr,
 };
 int status;

 dprintk("NFS call  getattr\n");
 nfs_fattr_init(fattr);
 status = rpc_call_sync(server->client, &msg, 0);
 dprintk("NFS reply getattr: %d\n", status);
 return status;
}
