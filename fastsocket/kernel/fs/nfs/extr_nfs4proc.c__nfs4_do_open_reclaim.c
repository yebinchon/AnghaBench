
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nfs_open_context {int dummy; } ;
struct nfs_delegation {int type; int flags; } ;
struct nfs4_state {int inode; } ;
struct TYPE_4__ {int delegation_type; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
struct nfs4_opendata {TYPE_2__ o_arg; } ;
typedef int fmode_t ;
struct TYPE_6__ {int delegation; } ;


 scalar_t__ IS_ERR (struct nfs4_opendata*) ;
 int NFS4_OPEN_CLAIM_PREVIOUS ;
 int NFS_DELEGATION_NEED_RECLAIM ;
 TYPE_3__* NFS_I (int ) ;
 int PTR_ERR (struct nfs4_opendata*) ;
 int nfs4_open_recover (struct nfs4_opendata*,struct nfs4_state*) ;
 struct nfs4_opendata* nfs4_open_recoverdata_alloc (struct nfs_open_context*,struct nfs4_state*,int ) ;
 int nfs4_opendata_put (struct nfs4_opendata*) ;
 struct nfs_delegation* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int _nfs4_do_open_reclaim(struct nfs_open_context *ctx, struct nfs4_state *state)
{
 struct nfs_delegation *delegation;
 struct nfs4_opendata *opendata;
 fmode_t delegation_type = 0;
 int status;

 opendata = nfs4_open_recoverdata_alloc(ctx, state,
   NFS4_OPEN_CLAIM_PREVIOUS);
 if (IS_ERR(opendata))
  return PTR_ERR(opendata);
 rcu_read_lock();
 delegation = rcu_dereference(NFS_I(state->inode)->delegation);
 if (delegation != ((void*)0) && test_bit(NFS_DELEGATION_NEED_RECLAIM, &delegation->flags) != 0)
  delegation_type = delegation->type;
 rcu_read_unlock();
 opendata->o_arg.u.delegation_type = delegation_type;
 status = nfs4_open_recover(opendata, state);
 nfs4_opendata_put(opendata);
 return status;
}
