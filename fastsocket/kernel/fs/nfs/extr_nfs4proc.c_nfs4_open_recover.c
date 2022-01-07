
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_state {scalar_t__ n_rdwr; scalar_t__ n_wronly; scalar_t__ n_rdonly; int seqlock; int open_stateid; int stateid; int flags; } ;
struct nfs4_opendata {int dummy; } ;


 int ESTALE ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int NFS_DELEGATED_STATE ;
 int NFS_O_RDONLY_STATE ;
 int NFS_O_RDWR_STATE ;
 int NFS_O_WRONLY_STATE ;
 int clear_bit (int ,int *) ;
 int nfs4_open_recover_helper (struct nfs4_opendata*,int,struct nfs4_state**) ;
 int nfs4_stateid_copy (int *,int *) ;
 int nfs4_stateid_match (int *,int *) ;
 int smp_rmb () ;
 scalar_t__ test_bit (int ,int *) ;
 int write_seqlock (int *) ;
 int write_sequnlock (int *) ;

__attribute__((used)) static int nfs4_open_recover(struct nfs4_opendata *opendata, struct nfs4_state *state)
{
 struct nfs4_state *newstate;
 int ret;


 clear_bit(NFS_DELEGATED_STATE, &state->flags);
 smp_rmb();
 if (state->n_rdwr != 0) {
  clear_bit(NFS_O_RDWR_STATE, &state->flags);
  ret = nfs4_open_recover_helper(opendata, FMODE_READ|FMODE_WRITE, &newstate);
  if (ret != 0)
   return ret;
  if (newstate != state)
   return -ESTALE;
 }
 if (state->n_wronly != 0) {
  clear_bit(NFS_O_WRONLY_STATE, &state->flags);
  ret = nfs4_open_recover_helper(opendata, FMODE_WRITE, &newstate);
  if (ret != 0)
   return ret;
  if (newstate != state)
   return -ESTALE;
 }
 if (state->n_rdonly != 0) {
  clear_bit(NFS_O_RDONLY_STATE, &state->flags);
  ret = nfs4_open_recover_helper(opendata, FMODE_READ, &newstate);
  if (ret != 0)
   return ret;
  if (newstate != state)
   return -ESTALE;
 }




 if (test_bit(NFS_DELEGATED_STATE, &state->flags) == 0 &&
     !nfs4_stateid_match(&state->stateid, &state->open_stateid)) {
  write_seqlock(&state->seqlock);
  if (test_bit(NFS_DELEGATED_STATE, &state->flags) == 0)
   nfs4_stateid_copy(&state->stateid, &state->open_stateid);
  write_sequnlock(&state->seqlock);
 }
 return 0;
}
