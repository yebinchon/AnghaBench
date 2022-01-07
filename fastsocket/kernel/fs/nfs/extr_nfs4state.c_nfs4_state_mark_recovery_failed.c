
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_state {int flags; } ;


 int NFS_STATE_RECOVERY_FAILED ;
 int nfs4_state_mark_open_context_bad (struct nfs4_state*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void nfs4_state_mark_recovery_failed(struct nfs4_state *state, int error)
{
 set_bit(NFS_STATE_RECOVERY_FAILED, &state->flags);
 nfs4_state_mark_open_context_bad(state);
}
