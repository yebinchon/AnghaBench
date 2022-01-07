
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_53__ TYPE_9__ ;
typedef struct TYPE_52__ TYPE_8__ ;
typedef struct TYPE_51__ TYPE_7__ ;
typedef struct TYPE_50__ TYPE_6__ ;
typedef struct TYPE_49__ TYPE_5__ ;
typedef struct TYPE_48__ TYPE_4__ ;
typedef struct TYPE_47__ TYPE_3__ ;
typedef struct TYPE_46__ TYPE_2__ ;
typedef struct TYPE_45__ TYPE_1__ ;
typedef struct TYPE_44__ TYPE_11__ ;
typedef struct TYPE_43__ TYPE_10__ ;


typedef int xfs_trans_t ;
struct TYPE_46__ {int m_dirdatablk; } ;
typedef TYPE_2__ xfs_mount_t ;
struct TYPE_47__ {TYPE_2__* i_mount; } ;
typedef TYPE_3__ xfs_inode_t ;
struct TYPE_48__ {void* address; void* hashval; } ;
typedef TYPE_4__ xfs_dir2_leaf_entry_t ;
struct TYPE_49__ {int length; int freetag; } ;
typedef TYPE_5__ xfs_dir2_data_unused_t ;
typedef int xfs_dir2_data_t ;
struct TYPE_50__ {int offset; int length; } ;
typedef TYPE_6__ xfs_dir2_data_free_t ;
struct TYPE_51__ {int name; int namelen; int inumber; } ;
typedef TYPE_7__ xfs_dir2_data_entry_t ;
typedef int xfs_dir2_data_aoff_t ;
struct TYPE_52__ {void* stale; void* count; } ;
typedef TYPE_8__ xfs_dir2_block_tail_t ;
struct TYPE_45__ {TYPE_6__* bestfree; void* magic; } ;
struct TYPE_53__ {TYPE_1__ hdr; } ;
typedef TYPE_9__ xfs_dir2_block_t ;
typedef int xfs_dahash_t ;
struct TYPE_43__ {TYPE_9__* data; } ;
typedef TYPE_10__ xfs_dabuf_t ;
struct TYPE_44__ {int op_flags; scalar_t__ total; int hashval; int namelen; int name; int inumber; int * trans; TYPE_3__* dp; } ;
typedef TYPE_11__ xfs_da_args_t ;
typedef int uint ;
typedef int __be16 ;


 int ASSERT (int) ;
 int EFSCORRUPTED ;
 int ENOSPC ;
 int MAX (int,int) ;
 int MIN (int,int) ;
 int XFS_CORRUPTION_ERROR (char*,int ,TYPE_2__*,TYPE_9__*) ;
 int XFS_DATA_FORK ;
 int XFS_DA_OP_JUSTCHECK ;
 int XFS_DIR2_BLOCK_MAGIC ;
 int XFS_DIR2_DATA_FREE_TAG ;
 int XFS_DIR2_NULL_DATAPTR ;
 int XFS_ERRLEVEL_LOW ;
 int XFS_ERROR (int ) ;
 int be16_to_cpu (int ) ;
 int be32_add_cpu (void**,int) ;
 int be32_to_cpu (void*) ;
 int cpu_to_be16 (int) ;
 void* cpu_to_be32 (int) ;
 int cpu_to_be64 (int ) ;
 int memcpy (int ,int ,int ) ;
 int memmove (TYPE_4__*,TYPE_4__*,int) ;
 int trace_xfs_dir2_block_addname (TYPE_11__*) ;
 scalar_t__ unlikely (int) ;
 int xfs_da_brelse (int *,TYPE_10__*) ;
 int xfs_da_buf_done (TYPE_10__*) ;
 int xfs_da_read_buf (int *,TYPE_3__*,int ,int,TYPE_10__**,int ) ;
 TYPE_4__* xfs_dir2_block_leaf_p (TYPE_8__*) ;
 int xfs_dir2_block_log_leaf (int *,TYPE_10__*,int,int) ;
 int xfs_dir2_block_log_tail (int *,TYPE_10__*) ;
 TYPE_8__* xfs_dir2_block_tail_p (TYPE_2__*,TYPE_9__*) ;
 int xfs_dir2_block_to_leaf (TYPE_11__*,TYPE_10__*) ;
 int xfs_dir2_byte_to_dataptr (TYPE_2__*,int) ;
 int xfs_dir2_data_check (TYPE_3__*,TYPE_10__*) ;
 int * xfs_dir2_data_entry_tag_p (TYPE_7__*) ;
 int xfs_dir2_data_entsize (int ) ;
 int xfs_dir2_data_freescan (TYPE_2__*,int *,int*) ;
 int xfs_dir2_data_log_entry (int *,TYPE_10__*,TYPE_7__*) ;
 int xfs_dir2_data_log_header (int *,TYPE_10__*) ;
 int xfs_dir2_data_make_free (int *,TYPE_10__*,int ,int ,int*,int*) ;
 int xfs_dir2_data_use_free (int *,TYPE_10__*,TYPE_5__*,int ,int ,int*,int*) ;
 int xfs_dir2_leaf_addname (TYPE_11__*) ;

int
xfs_dir2_block_addname(
 xfs_da_args_t *args)
{
 xfs_dir2_data_free_t *bf;
 xfs_dir2_block_t *block;
 xfs_dir2_leaf_entry_t *blp;
 xfs_dabuf_t *bp;
 xfs_dir2_block_tail_t *btp;
 int compact;
 xfs_dir2_data_entry_t *dep;
 xfs_inode_t *dp;
 xfs_dir2_data_unused_t *dup;
 int error;
 xfs_dir2_data_unused_t *enddup=((void*)0);
 xfs_dahash_t hash;
 int high;
 int highstale;
 int lfloghigh=0;
 int lfloglow=0;
 int len;
 int low;
 int lowstale;
 int mid=0;
 xfs_mount_t *mp;
 int needlog;
 int needscan;
 __be16 *tagp;
 xfs_trans_t *tp;

 trace_xfs_dir2_block_addname(args);

 dp = args->dp;
 tp = args->trans;
 mp = dp->i_mount;



 if ((error =
     xfs_da_read_buf(tp, dp, mp->m_dirdatablk, -1, &bp, XFS_DATA_FORK))) {
  return error;
 }
 ASSERT(bp != ((void*)0));
 block = bp->data;



 if (unlikely(be32_to_cpu(block->hdr.magic) != XFS_DIR2_BLOCK_MAGIC)) {
  XFS_CORRUPTION_ERROR("xfs_dir2_block_addname",
         XFS_ERRLEVEL_LOW, mp, block);
  xfs_da_brelse(tp, bp);
  return XFS_ERROR(EFSCORRUPTED);
 }
 len = xfs_dir2_data_entsize(args->namelen);



 bf = block->hdr.bestfree;
 btp = xfs_dir2_block_tail_p(mp, block);
 blp = xfs_dir2_block_leaf_p(btp);



 if (!btp->stale) {



  tagp = (__be16 *)blp - 1;



  enddup = (xfs_dir2_data_unused_t *)((char *)block + be16_to_cpu(*tagp));





  if (be16_to_cpu(enddup->freetag) != XFS_DIR2_DATA_FREE_TAG)
   dup = enddup = ((void*)0);



  else {
   dup = (xfs_dir2_data_unused_t *)
         ((char *)block + be16_to_cpu(bf[0].offset));
   if (dup == enddup) {




    if (be16_to_cpu(dup->length) < len + (uint)sizeof(*blp)) {




     if (be16_to_cpu(bf[1].length) >= len)
      dup = (xfs_dir2_data_unused_t *)
            ((char *)block +
             be16_to_cpu(bf[1].offset));
     else
      dup = ((void*)0);
    }
   } else {




    if (be16_to_cpu(dup->length) < len) {
     dup = ((void*)0);
    }
   }
  }
  compact = 0;
 }




 else if (be16_to_cpu(bf[0].length) >= len) {
  dup = (xfs_dir2_data_unused_t *)
        ((char *)block + be16_to_cpu(bf[0].offset));
  compact = 0;
 }



 else {



  tagp = (__be16 *)blp - 1;



  dup = (xfs_dir2_data_unused_t *)((char *)block + be16_to_cpu(*tagp));




  if (be16_to_cpu(dup->freetag) == XFS_DIR2_DATA_FREE_TAG) {
   if (be16_to_cpu(dup->length) + (be32_to_cpu(btp->stale) - 1) *
       (uint)sizeof(*blp) < len)
    dup = ((void*)0);
  } else if ((be32_to_cpu(btp->stale) - 1) * (uint)sizeof(*blp) < len)
   dup = ((void*)0);
  else
   dup = (xfs_dir2_data_unused_t *)blp;
  compact = 1;
 }



 if (args->op_flags & XFS_DA_OP_JUSTCHECK)
  xfs_da_brelse(tp, bp);



 if (!dup) {




  if ((args->op_flags & XFS_DA_OP_JUSTCHECK) || args->total == 0)
   return XFS_ERROR(ENOSPC);




  error = xfs_dir2_block_to_leaf(args, bp);
  xfs_da_buf_done(bp);
  if (error)
   return error;
  return xfs_dir2_leaf_addname(args);
 }



 if (args->op_flags & XFS_DA_OP_JUSTCHECK)
  return 0;
 needlog = needscan = 0;





 if (compact) {
  int fromidx;
  int toidx;

  for (fromidx = toidx = be32_to_cpu(btp->count) - 1,
   highstale = lfloghigh = -1;
       fromidx >= 0;
       fromidx--) {
   if (be32_to_cpu(blp[fromidx].address) == XFS_DIR2_NULL_DATAPTR) {
    if (highstale == -1)
     highstale = toidx;
    else {
     if (lfloghigh == -1)
      lfloghigh = toidx;
     continue;
    }
   }
   if (fromidx < toidx)
    blp[toidx] = blp[fromidx];
   toidx--;
  }
  lfloglow = toidx + 1 - (be32_to_cpu(btp->stale) - 1);
  lfloghigh -= be32_to_cpu(btp->stale) - 1;
  be32_add_cpu(&btp->count, -(be32_to_cpu(btp->stale) - 1));
  xfs_dir2_data_make_free(tp, bp,
   (xfs_dir2_data_aoff_t)((char *)blp - (char *)block),
   (xfs_dir2_data_aoff_t)((be32_to_cpu(btp->stale) - 1) * sizeof(*blp)),
   &needlog, &needscan);
  blp += be32_to_cpu(btp->stale) - 1;
  btp->stale = cpu_to_be32(1);




  if (needscan) {
   xfs_dir2_data_freescan(mp, (xfs_dir2_data_t *)block, &needlog);
   needscan = 0;
  }
 }




 else if (btp->stale) {
  lfloglow = be32_to_cpu(btp->count);
  lfloghigh = -1;
 }



 for (low = 0, high = be32_to_cpu(btp->count) - 1; low <= high; ) {
  mid = (low + high) >> 1;
  if ((hash = be32_to_cpu(blp[mid].hashval)) == args->hashval)
   break;
  if (hash < args->hashval)
   low = mid + 1;
  else
   high = mid - 1;
 }
 while (mid >= 0 && be32_to_cpu(blp[mid].hashval) >= args->hashval) {
  mid--;
 }



 if (!btp->stale) {



  xfs_dir2_data_use_free(tp, bp, enddup,
   (xfs_dir2_data_aoff_t)
   ((char *)enddup - (char *)block + be16_to_cpu(enddup->length) -
    sizeof(*blp)),
   (xfs_dir2_data_aoff_t)sizeof(*blp),
   &needlog, &needscan);



  be32_add_cpu(&btp->count, 1);




  if (needscan) {
   xfs_dir2_data_freescan(mp, (xfs_dir2_data_t *)block,
    &needlog);
   needscan = 0;
  }





  blp--;
  mid++;
  if (mid)
   memmove(blp, &blp[1], mid * sizeof(*blp));
  lfloglow = 0;
  lfloghigh = mid;
 }



 else {
  for (lowstale = mid;
       lowstale >= 0 &&
   be32_to_cpu(blp[lowstale].address) != XFS_DIR2_NULL_DATAPTR;
       lowstale--)
   continue;
  for (highstale = mid + 1;
       highstale < be32_to_cpu(btp->count) &&
   be32_to_cpu(blp[highstale].address) != XFS_DIR2_NULL_DATAPTR &&
   (lowstale < 0 || mid - lowstale > highstale - mid);
       highstale++)
   continue;



  if (lowstale >= 0 &&
      (highstale == be32_to_cpu(btp->count) ||
       mid - lowstale <= highstale - mid)) {
   if (mid - lowstale)
    memmove(&blp[lowstale], &blp[lowstale + 1],
     (mid - lowstale) * sizeof(*blp));
   lfloglow = MIN(lowstale, lfloglow);
   lfloghigh = MAX(mid, lfloghigh);
  }



  else {
   ASSERT(highstale < be32_to_cpu(btp->count));
   mid++;
   if (highstale - mid)
    memmove(&blp[mid + 1], &blp[mid],
     (highstale - mid) * sizeof(*blp));
   lfloglow = MIN(mid, lfloglow);
   lfloghigh = MAX(highstale, lfloghigh);
  }
  be32_add_cpu(&btp->stale, -1);
 }



 dep = (xfs_dir2_data_entry_t *)dup;



 blp[mid].hashval = cpu_to_be32(args->hashval);
 blp[mid].address = cpu_to_be32(xfs_dir2_byte_to_dataptr(mp,
    (char *)dep - (char *)block));
 xfs_dir2_block_log_leaf(tp, bp, lfloglow, lfloghigh);



 xfs_dir2_data_use_free(tp, bp, dup,
  (xfs_dir2_data_aoff_t)((char *)dup - (char *)block),
  (xfs_dir2_data_aoff_t)len, &needlog, &needscan);



 dep->inumber = cpu_to_be64(args->inumber);
 dep->namelen = args->namelen;
 memcpy(dep->name, args->name, args->namelen);
 tagp = xfs_dir2_data_entry_tag_p(dep);
 *tagp = cpu_to_be16((char *)dep - (char *)block);



 if (needscan)
  xfs_dir2_data_freescan(mp, (xfs_dir2_data_t *)block, &needlog);
 if (needlog)
  xfs_dir2_data_log_header(tp, bp);
 xfs_dir2_block_log_tail(tp, bp);
 xfs_dir2_data_log_entry(tp, bp, dep);
 xfs_dir2_data_check(dp, bp);
 xfs_da_buf_done(bp);
 return 0;
}
