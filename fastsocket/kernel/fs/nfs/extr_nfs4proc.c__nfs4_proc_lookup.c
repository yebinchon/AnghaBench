
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {struct nfs4_lookup_res* rpc_resp; struct nfs4_lookup_arg* rpc_argp; int * rpc_proc; } ;
struct rpc_clnt {int dummy; } ;
struct qstr {int name; } ;
struct nfs_server {int attr_bitmask; } ;
struct nfs_fh {int dummy; } ;
struct nfs_fattr {int dummy; } ;
struct nfs4_lookup_res {int seq_res; struct nfs_fh* fh; struct nfs_fattr* fattr; struct nfs_server* server; } ;
struct nfs4_lookup_arg {int seq_args; struct qstr const* name; int dir_fh; int bitmask; } ;
struct inode {int dummy; } ;


 size_t NFSPROC4_CLNT_LOOKUP ;
 int NFS_FH (struct inode*) ;
 struct nfs_server* NFS_SERVER (struct inode*) ;
 int dprintk (char*,int) ;
 int nfs4_call_sync (struct rpc_clnt*,struct nfs_server*,struct rpc_message*,int *,int *,int ) ;
 int * nfs4_procedures ;
 int nfs_fattr_init (struct nfs_fattr*) ;

__attribute__((used)) static int _nfs4_proc_lookup(struct rpc_clnt *clnt, struct inode *dir,
  const struct qstr *name, struct nfs_fh *fhandle,
  struct nfs_fattr *fattr)
{
 struct nfs_server *server = NFS_SERVER(dir);
 int status;
 struct nfs4_lookup_arg args = {
  .bitmask = server->attr_bitmask,
  .dir_fh = NFS_FH(dir),
  .name = name,
 };
 struct nfs4_lookup_res res = {
  .server = server,
  .fattr = fattr,
  .fh = fhandle,
 };
 struct rpc_message msg = {
  .rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_LOOKUP],
  .rpc_argp = &args,
  .rpc_resp = &res,
 };

 nfs_fattr_init(fattr);

 dprintk("NFS call  lookup %s\n", name->name);
 status = nfs4_call_sync(clnt, server, &msg, &args.seq_args, &res.seq_res, 0);
 dprintk("NFS reply lookup: %d\n", status);
 return status;
}
