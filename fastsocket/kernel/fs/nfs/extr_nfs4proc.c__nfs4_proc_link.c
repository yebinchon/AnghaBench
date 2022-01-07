
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {struct nfs4_link_res* rpc_resp; struct nfs4_link_arg* rpc_argp; int * rpc_proc; } ;
struct qstr {int dummy; } ;
struct nfs_server {int client; int attr_bitmask; } ;
struct nfs4_link_res {int * fattr; int cinfo; int seq_res; struct nfs_server* server; } ;
struct nfs4_link_arg {int seq_args; int bitmask; struct qstr* name; int dir_fh; int fh; } ;
struct inode {int dummy; } ;


 int ENOMEM ;
 size_t NFSPROC4_CLNT_LINK ;
 int NFS_FH (struct inode*) ;
 struct nfs_server* NFS_SERVER (struct inode*) ;
 int nfs4_call_sync (int ,struct nfs_server*,struct rpc_message*,int *,int *,int) ;
 int * nfs4_procedures ;
 int * nfs_alloc_fattr () ;
 int nfs_free_fattr (int *) ;
 int nfs_post_op_update_inode (struct inode*,int *) ;
 int update_changeattr (struct inode*,int *) ;

__attribute__((used)) static int _nfs4_proc_link(struct inode *inode, struct inode *dir, struct qstr *name)
{
 struct nfs_server *server = NFS_SERVER(inode);
 struct nfs4_link_arg arg = {
  .fh = NFS_FH(inode),
  .dir_fh = NFS_FH(dir),
  .name = name,
  .bitmask = server->attr_bitmask,
 };
 struct nfs4_link_res res = {
  .server = server,
 };
 struct rpc_message msg = {
  .rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_LINK],
  .rpc_argp = &arg,
  .rpc_resp = &res,
 };
 int status = -ENOMEM;

 res.fattr = nfs_alloc_fattr();
 if (res.fattr == ((void*)0))
  goto out;

 status = nfs4_call_sync(server->client, server, &msg, &arg.seq_args, &res.seq_res, 1);
 if (!status) {
  update_changeattr(dir, &res.cinfo);
  nfs_post_op_update_inode(inode, res.fattr);
 }
out:
 nfs_free_fattr(res.fattr);
 return status;
}
