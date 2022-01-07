
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pnfs_layout_hdr {int plh_outstanding; int plh_segs; int plh_flags; scalar_t__ plh_block_lgets; scalar_t__ plh_barrier; } ;
struct TYPE_4__ {int seqid; } ;
struct TYPE_5__ {TYPE_1__ stateid; } ;
typedef TYPE_2__ nfs4_stateid ;


 int NFS_LAYOUT_BULK_RECALL ;
 int NFS_LAYOUT_DESTROYED ;
 int atomic_read (int *) ;
 scalar_t__ be32_to_cpu (int ) ;
 scalar_t__ list_empty (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool
pnfs_layoutgets_blocked(struct pnfs_layout_hdr *lo, nfs4_stateid *stateid,
   int lget)
{
 if ((stateid) &&
     (int)(lo->plh_barrier - be32_to_cpu(stateid->stateid.seqid)) >= 0)
  return 1;
 return lo->plh_block_lgets ||
  test_bit(NFS_LAYOUT_DESTROYED, &lo->plh_flags) ||
  test_bit(NFS_LAYOUT_BULK_RECALL, &lo->plh_flags) ||
  (list_empty(&lo->plh_segs) &&
   (atomic_read(&lo->plh_outstanding) > lget));
}
