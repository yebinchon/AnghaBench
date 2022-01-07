
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_inode {int delegation; } ;
struct nfs_delegation {int stateid; } ;
struct nfs4_state {int count; TYPE_2__* owner; int inode; } ;
struct TYPE_3__ {int open_flags; int seqid; int fmode; } ;
struct nfs4_opendata {int is_recover; TYPE_1__ o_arg; struct nfs4_state* state; } ;
typedef int nfs4_stateid ;
typedef int fmode_t ;
struct TYPE_4__ {int so_cred; int so_lock; } ;


 int EAGAIN ;
 struct nfs4_state* ERR_PTR (int) ;
 struct nfs_inode* NFS_I (int ) ;
 int O_EXCL ;
 int O_TRUNC ;
 int atomic_inc (int *) ;
 scalar_t__ can_open_cached (struct nfs4_state*,int ,int) ;
 int can_open_delegated (struct nfs_delegation*,int ) ;
 int nfs4_stateid_copy (int *,int *) ;
 int nfs_may_open (int ,int ,int) ;
 int nfs_release_seqid (int ) ;
 struct nfs_delegation* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int update_open_stateflags (struct nfs4_state*,int ) ;
 scalar_t__ update_open_stateid (struct nfs4_state*,int *,int *,int ) ;

__attribute__((used)) static struct nfs4_state *nfs4_try_open_cached(struct nfs4_opendata *opendata)
{
 struct nfs4_state *state = opendata->state;
 struct nfs_inode *nfsi = NFS_I(state->inode);
 struct nfs_delegation *delegation;
 int open_mode = opendata->o_arg.open_flags & (O_EXCL|O_TRUNC);
 fmode_t fmode = opendata->o_arg.fmode;
 nfs4_stateid stateid;
 int ret = -EAGAIN;

 for (;;) {
  if (can_open_cached(state, fmode, open_mode)) {
   spin_lock(&state->owner->so_lock);
   if (can_open_cached(state, fmode, open_mode)) {
    update_open_stateflags(state, fmode);
    spin_unlock(&state->owner->so_lock);
    goto out_return_state;
   }
   spin_unlock(&state->owner->so_lock);
  }
  rcu_read_lock();
  delegation = rcu_dereference(nfsi->delegation);
  if (!can_open_delegated(delegation, fmode)) {
   rcu_read_unlock();
   break;
  }

  nfs4_stateid_copy(&stateid, &delegation->stateid);
  rcu_read_unlock();
  nfs_release_seqid(opendata->o_arg.seqid);
  if (!opendata->is_recover) {
   ret = nfs_may_open(state->inode, state->owner->so_cred, open_mode);
   if (ret != 0)
    goto out;
  }
  ret = -EAGAIN;


  if (update_open_stateid(state, ((void*)0), &stateid, fmode))
   goto out_return_state;
 }
out:
 return ERR_PTR(ret);
out_return_state:
 atomic_inc(&state->count);
 return state;
}
