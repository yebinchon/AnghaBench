
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_lockowner {int l_pid; int l_owner; } ;
struct nfs4_state {int state_lock; int flags; } ;
struct TYPE_2__ {int list; } ;
struct nfs4_lock_state {int ls_flags; TYPE_1__ ls_sequence; int ls_stateid; } ;
typedef int pid_t ;
typedef int nfs4_stateid ;
typedef int fl_owner_t ;


 int ENOENT ;
 int EWOULDBLOCK ;
 int LK_STATE_IN_USE ;
 int NFS4_ANY_LOCK_TYPE ;
 int NFS_LOCK_INITIALIZED ;
 struct nfs4_lock_state* __nfs4_find_lock_state (struct nfs4_state*,int ,int ,int ) ;
 int list_empty (int *) ;
 int nfs4_put_lock_state (struct nfs4_lock_state*) ;
 int nfs4_stateid_copy (int *,int *) ;
 int smp_rmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int nfs4_copy_lock_stateid(nfs4_stateid *dst,
  struct nfs4_state *state,
  const struct nfs_lockowner *lockowner)
{
 struct nfs4_lock_state *lsp;
 fl_owner_t fl_owner;
 pid_t fl_pid;
 int ret = -ENOENT;


 if (lockowner == ((void*)0))
  goto out;

 if (test_bit(LK_STATE_IN_USE, &state->flags) == 0)
  goto out;

 fl_owner = lockowner->l_owner;
 fl_pid = lockowner->l_pid;
 spin_lock(&state->state_lock);
 lsp = __nfs4_find_lock_state(state, fl_owner, fl_pid, NFS4_ANY_LOCK_TYPE);
 if (lsp != ((void*)0) && (lsp->ls_flags & NFS_LOCK_INITIALIZED) != 0) {
  nfs4_stateid_copy(dst, &lsp->ls_stateid);
  ret = 0;
  smp_rmb();
  if (!list_empty(&lsp->ls_sequence.list))
   ret = -EWOULDBLOCK;
 }
 spin_unlock(&state->state_lock);
 nfs4_put_lock_state(lsp);
out:
 return ret;
}
