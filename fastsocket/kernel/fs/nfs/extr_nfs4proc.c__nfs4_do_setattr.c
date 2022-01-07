
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_message {struct rpc_cred* rpc_cred; struct nfs_setattrres* rpc_resp; struct nfs_setattrargs* rpc_argp; int * rpc_proc; } ;
struct rpc_cred {int dummy; } ;
struct nfs_setattrres {int seq_res; struct nfs_server* server; struct nfs_fattr* fattr; } ;
struct nfs_setattrargs {int seq_args; int stateid; int bitmask; struct nfs_server* server; struct iattr* iap; int fh; } ;
struct nfs_server {int client; int attr_bitmask; } ;
struct nfs_lockowner {int l_pid; int l_owner; } ;
struct nfs_fattr {int dummy; } ;
struct nfs4_state {int dummy; } ;
struct inode {int dummy; } ;
struct iattr {int dummy; } ;
struct TYPE_2__ {int tgid; int files; } ;


 int FMODE_WRITE ;
 size_t NFSPROC4_CLNT_SETATTR ;
 int NFS_FH (struct inode*) ;
 struct nfs_server* NFS_SERVER (struct inode*) ;
 TYPE_1__* current ;
 unsigned long jiffies ;
 int nfs4_call_sync (int ,struct nfs_server*,struct rpc_message*,int *,int *,int) ;
 scalar_t__ nfs4_copy_delegation_stateid (int *,struct inode*,int ) ;
 int * nfs4_procedures ;
 int nfs4_select_rw_stateid (int *,struct nfs4_state*,int ,struct nfs_lockowner*) ;
 int nfs4_stateid_copy (int *,int *) ;
 scalar_t__ nfs4_valid_open_stateid (struct nfs4_state*) ;
 int nfs_fattr_init (struct nfs_fattr*) ;
 int renew_lease (struct nfs_server*,unsigned long) ;
 int zero_stateid ;

__attribute__((used)) static int _nfs4_do_setattr(struct inode *inode, struct rpc_cred *cred,
       struct nfs_fattr *fattr, struct iattr *sattr,
       struct nfs4_state *state)
{
 struct nfs_server *server = NFS_SERVER(inode);
        struct nfs_setattrargs arg = {
                .fh = NFS_FH(inode),
                .iap = sattr,
  .server = server,
  .bitmask = server->attr_bitmask,
        };
        struct nfs_setattrres res = {
  .fattr = fattr,
  .server = server,
        };
        struct rpc_message msg = {
  .rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_SETATTR],
  .rpc_argp = &arg,
  .rpc_resp = &res,
  .rpc_cred = cred,
        };
 unsigned long timestamp = jiffies;
 int status;

 nfs_fattr_init(fattr);

 if (state != ((void*)0) && nfs4_valid_open_stateid(state)) {
  struct nfs_lockowner lockowner = {
   .l_owner = current->files,
   .l_pid = current->tgid,
  };
  nfs4_select_rw_stateid(&arg.stateid, state, FMODE_WRITE,
    &lockowner);
 } else if (nfs4_copy_delegation_stateid(&arg.stateid, inode,
    FMODE_WRITE)) {

 } else
  nfs4_stateid_copy(&arg.stateid, &zero_stateid);

 status = nfs4_call_sync(server->client, server, &msg, &arg.seq_args, &res.seq_res, 1);
 if (status == 0 && state != ((void*)0))
  renew_lease(server, timestamp);
 return status;
}
