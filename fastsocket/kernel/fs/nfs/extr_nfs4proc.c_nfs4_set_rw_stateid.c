
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_open_context {int state; } ;
struct nfs_lockowner {int dummy; } ;
struct nfs_lock_context {struct nfs_lockowner lockowner; } ;
typedef int nfs4_stateid ;
typedef int fmode_t ;


 int nfs4_select_rw_stateid (int *,int ,int ,struct nfs_lockowner const*) ;

int nfs4_set_rw_stateid(nfs4_stateid *stateid,
  const struct nfs_open_context *ctx,
  const struct nfs_lock_context *l_ctx,
  fmode_t fmode)
{
 const struct nfs_lockowner *lockowner = ((void*)0);

 if (l_ctx != ((void*)0))
  lockowner = &l_ctx->lockowner;
 return nfs4_select_rw_stateid(stateid, ctx->state, fmode, lockowner);
}
