
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_state {int seqlock; } ;
typedef int nfs4_stateid ;
typedef int fmode_t ;


 int nfs_set_open_stateid_locked (struct nfs4_state*,int *,int ) ;
 int write_seqlock (int *) ;
 int write_sequnlock (int *) ;

__attribute__((used)) static void nfs_set_open_stateid(struct nfs4_state *state, nfs4_stateid *stateid, fmode_t fmode)
{
 write_seqlock(&state->seqlock);
 nfs_set_open_stateid_locked(state, stateid, fmode);
 write_sequnlock(&state->seqlock);
}
