
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int seqid; } ;
struct TYPE_10__ {TYPE_2__ stateid; } ;
struct pnfs_layout_hdr {int plh_barrier; TYPE_5__ plh_stateid; } ;
struct TYPE_7__ {int seqid; } ;
struct TYPE_9__ {TYPE_1__ stateid; } ;
typedef TYPE_3__ nfs4_stateid ;


 int be32_to_cpu (int ) ;
 int nfs4_stateid_copy (TYPE_5__*,TYPE_3__ const*) ;
 scalar_t__ unlikely (int) ;

void
pnfs_set_layout_stateid(struct pnfs_layout_hdr *lo, const nfs4_stateid *new,
   bool update_barrier)
{
 u32 oldseq, newseq;

 oldseq = be32_to_cpu(lo->plh_stateid.stateid.seqid);
 newseq = be32_to_cpu(new->stateid.seqid);
 if ((int)(newseq - oldseq) > 0) {
  nfs4_stateid_copy(&lo->plh_stateid, new);
  if (update_barrier) {
   u32 new_barrier = be32_to_cpu(new->stateid.seqid);

   if ((int)(new_barrier - lo->plh_barrier))
    lo->plh_barrier = new_barrier;
  } else {







   if (unlikely((newseq - lo->plh_barrier) > (3 << 29)))
    lo->plh_barrier = newseq - (1 << 30);
  }
 }
}
