
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs4_state {TYPE_1__* owner; int flags; } ;
typedef int fmode_t ;
struct TYPE_2__ {int so_lock; } ;


 int FMODE_READ ;
 int FMODE_WRITE ;
 int NFS_O_RDONLY_STATE ;
 int NFS_O_RDWR_STATE ;
 int NFS_O_WRONLY_STATE ;
 int clear_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nfs4_close_clear_stateid_flags(struct nfs4_state *state,
  fmode_t fmode)
{
 spin_lock(&state->owner->so_lock);
 if (!(fmode & FMODE_READ))
  clear_bit(NFS_O_RDONLY_STATE, &state->flags);
 if (!(fmode & FMODE_WRITE))
  clear_bit(NFS_O_WRONLY_STATE, &state->flags);
 clear_bit(NFS_O_RDWR_STATE, &state->flags);
 spin_unlock(&state->owner->so_lock);
}
