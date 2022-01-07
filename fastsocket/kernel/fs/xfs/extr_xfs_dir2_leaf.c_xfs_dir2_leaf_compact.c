
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ stale; scalar_t__ count; } ;
struct TYPE_12__ {TYPE_2__ hdr; TYPE_1__* ents; } ;
typedef TYPE_3__ xfs_dir2_leaf_t ;
struct TYPE_13__ {TYPE_3__* data; } ;
typedef TYPE_4__ xfs_dabuf_t ;
struct TYPE_14__ {int trans; } ;
typedef TYPE_5__ xfs_da_args_t ;
struct TYPE_10__ {int address; } ;


 int ASSERT (int) ;
 scalar_t__ XFS_DIR2_NULL_DATAPTR ;
 int be16_add_cpu (scalar_t__*,int) ;
 int be16_to_cpu (scalar_t__) ;
 scalar_t__ be32_to_cpu (int ) ;
 int xfs_dir2_leaf_log_ents (int ,TYPE_4__*,int,int) ;
 int xfs_dir2_leaf_log_header (int ,TYPE_4__*) ;

void
xfs_dir2_leaf_compact(
 xfs_da_args_t *args,
 xfs_dabuf_t *bp)
{
 int from;
 xfs_dir2_leaf_t *leaf;
 int loglow;
 int to;

 leaf = bp->data;
 if (!leaf->hdr.stale) {
  return;
 }



 for (from = to = 0, loglow = -1; from < be16_to_cpu(leaf->hdr.count); from++) {
  if (be32_to_cpu(leaf->ents[from].address) == XFS_DIR2_NULL_DATAPTR)
   continue;



  if (from > to) {
   if (loglow == -1)
    loglow = to;
   leaf->ents[to] = leaf->ents[from];
  }
  to++;
 }



 ASSERT(be16_to_cpu(leaf->hdr.stale) == from - to);
 be16_add_cpu(&leaf->hdr.count, -(be16_to_cpu(leaf->hdr.stale)));
 leaf->hdr.stale = 0;
 xfs_dir2_leaf_log_header(args->trans, bp);
 if (loglow != -1)
  xfs_dir2_leaf_log_ents(args->trans, bp, loglow, to - 1);
}
