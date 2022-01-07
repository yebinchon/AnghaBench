
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int xfs_trans_t ;
typedef int xfs_mount_t ;
struct TYPE_18__ {int * i_mount; } ;
typedef TYPE_2__ xfs_inode_t ;
struct TYPE_17__ {scalar_t__ stale; scalar_t__ count; } ;
struct TYPE_19__ {TYPE_1__ hdr; TYPE_4__* ents; } ;
typedef TYPE_3__ xfs_dir2_leaf_t ;
struct TYPE_20__ {void* address; void* hashval; } ;
typedef TYPE_4__ xfs_dir2_leaf_entry_t ;
struct TYPE_21__ {TYPE_3__* data; } ;
typedef TYPE_5__ xfs_dabuf_t ;
struct TYPE_22__ {scalar_t__ hashval; int op_flags; int index; int blkno; int * trans; TYPE_2__* dp; } ;
typedef TYPE_6__ xfs_da_args_t ;


 int ASSERT (int) ;
 int EFSCORRUPTED ;
 int ENOSPC ;
 int MAX (int,int) ;
 int MIN (int,int) ;
 int XFS_DA_OP_JUSTCHECK ;
 scalar_t__ XFS_DIR2_NULL_DATAPTR ;
 int XFS_ERROR (int ) ;
 int be16_add_cpu (scalar_t__*,int) ;
 int be16_to_cpu (scalar_t__) ;
 scalar_t__ be32_to_cpu (void*) ;
 void* cpu_to_be32 (scalar_t__) ;
 int memmove (TYPE_4__*,TYPE_4__*,int) ;
 int trace_xfs_dir2_leafn_add (TYPE_6__*,int) ;
 scalar_t__ xfs_dir2_db_off_to_dataptr (int *,int ,int ) ;
 int xfs_dir2_leaf_compact_x1 (TYPE_5__*,int*,int*,int*,int*,int*) ;
 int xfs_dir2_leaf_log_ents (int *,TYPE_5__*,int,int) ;
 int xfs_dir2_leaf_log_header (int *,TYPE_5__*) ;
 int xfs_dir2_leafn_check (TYPE_2__*,TYPE_5__*) ;
 int xfs_dir2_max_leaf_ents (int *) ;

__attribute__((used)) static int
xfs_dir2_leafn_add(
 xfs_dabuf_t *bp,
 xfs_da_args_t *args,
 int index)
{
 int compact;
 xfs_inode_t *dp;
 int highstale;
 xfs_dir2_leaf_t *leaf;
 xfs_dir2_leaf_entry_t *lep;
 int lfloghigh;
 int lfloglow;
 int lowstale;
 xfs_mount_t *mp;
 xfs_trans_t *tp;

 trace_xfs_dir2_leafn_add(args, index);

 dp = args->dp;
 mp = dp->i_mount;
 tp = args->trans;
 leaf = bp->data;





 if (index < 0)
  return XFS_ERROR(EFSCORRUPTED);
 if (be16_to_cpu(leaf->hdr.count) == xfs_dir2_max_leaf_ents(mp)) {
  if (!leaf->hdr.stale)
   return XFS_ERROR(ENOSPC);
  compact = be16_to_cpu(leaf->hdr.stale) > 1;
 } else
  compact = 0;
 ASSERT(index == 0 || be32_to_cpu(leaf->ents[index - 1].hashval) <= args->hashval);
 ASSERT(index == be16_to_cpu(leaf->hdr.count) ||
        be32_to_cpu(leaf->ents[index].hashval) >= args->hashval);

 if (args->op_flags & XFS_DA_OP_JUSTCHECK)
  return 0;





 if (compact) {
  xfs_dir2_leaf_compact_x1(bp, &index, &lowstale, &highstale,
   &lfloglow, &lfloghigh);
 }



 else if (leaf->hdr.stale) {
  lfloglow = be16_to_cpu(leaf->hdr.count);
  lfloghigh = -1;
 }



 if (!leaf->hdr.stale) {
  lep = &leaf->ents[index];
  if (index < be16_to_cpu(leaf->hdr.count))
   memmove(lep + 1, lep,
    (be16_to_cpu(leaf->hdr.count) - index) * sizeof(*lep));
  lfloglow = index;
  lfloghigh = be16_to_cpu(leaf->hdr.count);
  be16_add_cpu(&leaf->hdr.count, 1);
 }



 else {




  if (compact == 0) {



   for (lowstale = index - 1;
        lowstale >= 0 &&
    be32_to_cpu(leaf->ents[lowstale].address) !=
    XFS_DIR2_NULL_DATAPTR;
        lowstale--)
    continue;





   for (highstale = index;
        highstale < be16_to_cpu(leaf->hdr.count) &&
    be32_to_cpu(leaf->ents[highstale].address) !=
    XFS_DIR2_NULL_DATAPTR &&
    (lowstale < 0 ||
     index - lowstale - 1 >= highstale - index);
        highstale++)
    continue;
  }




  if (lowstale >= 0 &&
      (highstale == be16_to_cpu(leaf->hdr.count) ||
       index - lowstale - 1 < highstale - index)) {
   ASSERT(be32_to_cpu(leaf->ents[lowstale].address) ==
          XFS_DIR2_NULL_DATAPTR);
   ASSERT(index - lowstale - 1 >= 0);
   if (index - lowstale - 1 > 0)
    memmove(&leaf->ents[lowstale],
     &leaf->ents[lowstale + 1],
     (index - lowstale - 1) * sizeof(*lep));
   lep = &leaf->ents[index - 1];
   lfloglow = MIN(lowstale, lfloglow);
   lfloghigh = MAX(index - 1, lfloghigh);
  }




  else {
   ASSERT(be32_to_cpu(leaf->ents[highstale].address) ==
          XFS_DIR2_NULL_DATAPTR);
   ASSERT(highstale - index >= 0);
   if (highstale - index > 0)
    memmove(&leaf->ents[index + 1],
     &leaf->ents[index],
     (highstale - index) * sizeof(*lep));
   lep = &leaf->ents[index];
   lfloglow = MIN(index, lfloglow);
   lfloghigh = MAX(highstale, lfloghigh);
  }
  be16_add_cpu(&leaf->hdr.stale, -1);
 }



 lep->hashval = cpu_to_be32(args->hashval);
 lep->address = cpu_to_be32(xfs_dir2_db_off_to_dataptr(mp,
    args->blkno, args->index));
 xfs_dir2_leaf_log_header(tp, bp);
 xfs_dir2_leaf_log_ents(tp, bp, lfloglow, lfloghigh);
 xfs_dir2_leafn_check(dp, bp);
 return 0;
}
