
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {struct nfs4_lookup_res* rpc_resp; struct nfs4_lookup_root_arg* rpc_argp; int * rpc_proc; } ;
struct nfs_server {int client; } ;
struct nfs_fsinfo {int fattr; } ;
struct nfs_fh {int dummy; } ;
struct nfs4_lookup_root_arg {int seq_args; int bitmask; } ;
struct nfs4_lookup_res {int seq_res; struct nfs_fh* fh; int fattr; struct nfs_server* server; } ;


 size_t NFSPROC4_CLNT_LOOKUP_ROOT ;
 int nfs4_call_sync (int ,struct nfs_server*,struct rpc_message*,int *,int *,int ) ;
 int nfs4_fattr_bitmap ;
 int * nfs4_procedures ;
 int nfs_fattr_init (int ) ;

__attribute__((used)) static int _nfs4_lookup_root(struct nfs_server *server, struct nfs_fh *fhandle,
  struct nfs_fsinfo *info)
{
 struct nfs4_lookup_root_arg args = {
  .bitmask = nfs4_fattr_bitmap,
 };
 struct nfs4_lookup_res res = {
  .server = server,
  .fattr = info->fattr,
  .fh = fhandle,
 };
 struct rpc_message msg = {
  .rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_LOOKUP_ROOT],
  .rpc_argp = &args,
  .rpc_resp = &res,
 };

 nfs_fattr_init(info->fattr);
 return nfs4_call_sync(server->client, server, &msg, &args.seq_args, &res.seq_res, 0);
}
