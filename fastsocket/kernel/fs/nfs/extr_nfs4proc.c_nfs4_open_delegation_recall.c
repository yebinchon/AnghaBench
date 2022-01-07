
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_server {int dummy; } ;
struct nfs_open_context {int dummy; } ;
struct nfs4_state {int inode; } ;
struct TYPE_3__ {int delegation; } ;
struct TYPE_4__ {TYPE_1__ u; } ;
struct nfs4_opendata {TYPE_2__ o_arg; } ;
typedef int nfs4_stateid ;


 scalar_t__ IS_ERR (struct nfs4_opendata*) ;
 int NFS4_OPEN_CLAIM_DELEG_CUR_FH ;
 struct nfs_server* NFS_SERVER (int ) ;
 int PTR_ERR (struct nfs4_opendata*) ;
 int nfs4_handle_delegation_recall_error (struct nfs_server*,struct nfs4_state*,int const*,int) ;
 int nfs4_open_recover (struct nfs4_opendata*,struct nfs4_state*) ;
 struct nfs4_opendata* nfs4_open_recoverdata_alloc (struct nfs_open_context*,struct nfs4_state*,int ) ;
 int nfs4_opendata_put (struct nfs4_opendata*) ;
 int nfs4_stateid_copy (int *,int const*) ;

int nfs4_open_delegation_recall(struct nfs_open_context *ctx, struct nfs4_state *state, const nfs4_stateid *stateid)
{
 struct nfs_server *server = NFS_SERVER(state->inode);
 struct nfs4_opendata *opendata;
 int err;

 opendata = nfs4_open_recoverdata_alloc(ctx, state,
   NFS4_OPEN_CLAIM_DELEG_CUR_FH);
 if (IS_ERR(opendata))
  return PTR_ERR(opendata);
 nfs4_stateid_copy(&opendata->o_arg.u.delegation, stateid);
 err = nfs4_open_recover(opendata, state);
 nfs4_opendata_put(opendata);
 return nfs4_handle_delegation_recall_error(server, state, stateid, err);
}
