
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_client {int cl_state; } ;
struct nfs4_state {TYPE_1__* owner; int flags; } ;
struct TYPE_2__ {int so_flags; } ;


 int NFS4CLNT_RECLAIM_REBOOT ;
 int NFS_OWNER_RECLAIM_REBOOT ;
 int NFS_STATE_RECLAIM_NOGRACE ;
 int NFS_STATE_RECLAIM_REBOOT ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int nfs4_state_mark_reclaim_reboot(struct nfs_client *clp, struct nfs4_state *state)
{

 set_bit(NFS_STATE_RECLAIM_REBOOT, &state->flags);

 if (test_bit(NFS_STATE_RECLAIM_NOGRACE, &state->flags)) {
  clear_bit(NFS_STATE_RECLAIM_REBOOT, &state->flags);
  return 0;
 }
 set_bit(NFS_OWNER_RECLAIM_REBOOT, &state->owner->so_flags);
 set_bit(NFS4CLNT_RECLAIM_REBOOT, &clp->cl_state);
 return 1;
}
