
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {int * nfs4_opcount; } ;


 size_t FIRST_NFS4_OP ;
 size_t LAST_NFS4_OP ;
 TYPE_1__ nfsdstats ;

__attribute__((used)) static inline void nfsd4_increment_op_stats(u32 opnum)
{
 if (opnum >= FIRST_NFS4_OP && opnum <= LAST_NFS4_OP)
  nfsdstats.nfs4_opcount[opnum]++;
}
