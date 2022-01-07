
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_message {struct nfs_removeres* rpc_resp; struct nfs_removeargs* rpc_argp; int * rpc_proc; } ;
struct qstr {int name; int len; } ;
struct nfs_server {int client; } ;
struct nfs_removeres {int cinfo; int seq_res; struct nfs_server* server; } ;
struct TYPE_2__ {int name; int len; } ;
struct nfs_removeargs {int seq_args; TYPE_1__ name; int fh; } ;
struct inode {int dummy; } ;


 size_t NFSPROC4_CLNT_REMOVE ;
 int NFS_FH (struct inode*) ;
 struct nfs_server* NFS_SERVER (struct inode*) ;
 int nfs4_call_sync (int ,struct nfs_server*,struct rpc_message*,int *,int *,int) ;
 int * nfs4_procedures ;
 int update_changeattr (struct inode*,int *) ;

__attribute__((used)) static int _nfs4_proc_remove(struct inode *dir, struct qstr *name)
{
 struct nfs_server *server = NFS_SERVER(dir);
 struct nfs_removeargs args = {
  .fh = NFS_FH(dir),
  .name.len = name->len,
  .name.name = name->name,
 };
 struct nfs_removeres res = {
  .server = server,
 };
 struct rpc_message msg = {
  .rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_REMOVE],
  .rpc_argp = &args,
  .rpc_resp = &res,
 };
 int status;

 status = nfs4_call_sync(server->client, server, &msg, &args.seq_args, &res.seq_res, 1);
 if (status == 0)
  update_changeattr(dir, &res.cinfo);
 return status;
}
