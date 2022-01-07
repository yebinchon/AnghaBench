
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs4_state {TYPE_2__* owner; int stateid; int seqlock; } ;
typedef int nfs4_stateid ;
struct TYPE_3__ {int list; } ;
struct TYPE_4__ {TYPE_1__ so_sequence; } ;


 int EWOULDBLOCK ;
 int list_empty (int *) ;
 int nfs4_stateid_copy (int *,int *) ;
 int read_seqbegin (int *) ;
 scalar_t__ read_seqretry (int *,int) ;
 int smp_rmb () ;

__attribute__((used)) static int nfs4_copy_open_stateid(nfs4_stateid *dst, struct nfs4_state *state)
{
 int ret;
 int seq;

 do {
  seq = read_seqbegin(&state->seqlock);
  nfs4_stateid_copy(dst, &state->stateid);
  ret = 0;
  smp_rmb();
  if (!list_empty(&state->owner->so_sequence.list))
   ret = -EWOULDBLOCK;
 } while (read_seqretry(&state->seqlock, seq));
 return ret;
}
