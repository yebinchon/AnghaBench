
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {struct nfs4_getattr_res* rpc_resp; struct nfs4_getattr_arg* rpc_argp; int * rpc_proc; } ;
struct nfs_server {int client; int attr_bitmask; } ;
struct nfs_fh {int dummy; } ;
struct nfs_fattr {int dummy; } ;
struct nfs4_getattr_res {int seq_res; struct nfs_server* server; struct nfs_fattr* fattr; } ;
struct nfs4_getattr_arg {int seq_args; int bitmask; struct nfs_fh* fh; } ;


 size_t NFSPROC4_CLNT_GETATTR ;
 int nfs4_call_sync (int ,struct nfs_server*,struct rpc_message*,int *,int *,int ) ;
 int * nfs4_procedures ;
 int nfs_fattr_init (struct nfs_fattr*) ;

__attribute__((used)) static int _nfs4_proc_getattr(struct nfs_server *server, struct nfs_fh *fhandle, struct nfs_fattr *fattr)
{
 struct nfs4_getattr_arg args = {
  .fh = fhandle,
  .bitmask = server->attr_bitmask,
 };
 struct nfs4_getattr_res res = {
  .fattr = fattr,
  .server = server,
 };
 struct rpc_message msg = {
  .rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_GETATTR],
  .rpc_argp = &args,
  .rpc_resp = &res,
 };

 nfs_fattr_init(fattr);
 return nfs4_call_sync(server->client, server, &msg, &args.seq_args, &res.seq_res, 0);
}
