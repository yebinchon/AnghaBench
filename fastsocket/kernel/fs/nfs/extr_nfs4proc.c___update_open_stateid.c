
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs4_state {TYPE_1__* owner; int seqlock; int flags; int stateid; } ;
typedef int nfs4_stateid ;
typedef int fmode_t ;
struct TYPE_2__ {int so_lock; } ;


 int NFS_DELEGATED_STATE ;
 int nfs4_stateid_copy (int *,int const*) ;
 int nfs_set_open_stateid_locked (struct nfs4_state*,int *,int ) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int update_open_stateflags (struct nfs4_state*,int ) ;
 int write_seqlock (int *) ;
 int write_sequnlock (int *) ;

__attribute__((used)) static void __update_open_stateid(struct nfs4_state *state, nfs4_stateid *open_stateid, const nfs4_stateid *deleg_stateid, fmode_t fmode)
{




 write_seqlock(&state->seqlock);
 if (deleg_stateid != ((void*)0)) {
  nfs4_stateid_copy(&state->stateid, deleg_stateid);
  set_bit(NFS_DELEGATED_STATE, &state->flags);
 }
 if (open_stateid != ((void*)0))
  nfs_set_open_stateid_locked(state, open_stateid, fmode);
 write_sequnlock(&state->seqlock);
 spin_lock(&state->owner->so_lock);
 update_open_stateflags(state, fmode);
 spin_unlock(&state->owner->so_lock);
}
