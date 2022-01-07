
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef int xfs_trans_t ;
typedef int xfs_mount_t ;
struct TYPE_25__ {int * i_mount; } ;
typedef TYPE_1__ xfs_inode_t ;
typedef int xfs_dir2_sf_hdr_t ;
struct TYPE_26__ {int address; } ;
typedef TYPE_2__ xfs_dir2_leaf_entry_t ;
typedef int xfs_dir2_data_t ;
struct TYPE_27__ {int namelen; } ;
typedef TYPE_3__ xfs_dir2_data_entry_t ;
typedef int xfs_dir2_data_aoff_t ;
struct TYPE_28__ {int stale; } ;
typedef TYPE_4__ xfs_dir2_block_tail_t ;
typedef int xfs_dir2_block_t ;
struct TYPE_29__ {int * data; } ;
typedef TYPE_5__ xfs_dabuf_t ;
struct TYPE_30__ {int * trans; TYPE_1__* dp; } ;
typedef TYPE_6__ xfs_da_args_t ;


 int XFS_DIR2_NULL_DATAPTR ;
 int XFS_IFORK_DSIZE (TYPE_1__*) ;
 int be32_add_cpu (int *,int) ;
 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int ) ;
 int trace_xfs_dir2_block_removename (TYPE_6__*) ;
 int xfs_da_buf_done (TYPE_5__*) ;
 TYPE_2__* xfs_dir2_block_leaf_p (TYPE_4__*) ;
 int xfs_dir2_block_log_leaf (int *,TYPE_5__*,int,int) ;
 int xfs_dir2_block_log_tail (int *,TYPE_5__*) ;
 int xfs_dir2_block_lookup_int (TYPE_6__*,TYPE_5__**,int*) ;
 int xfs_dir2_block_sfsize (TYPE_1__*,int *,int *) ;
 TYPE_4__* xfs_dir2_block_tail_p (int *,int *) ;
 int xfs_dir2_block_to_sf (TYPE_6__*,TYPE_5__*,int,int *) ;
 int xfs_dir2_data_check (TYPE_1__*,TYPE_5__*) ;
 int xfs_dir2_data_entsize (int ) ;
 int xfs_dir2_data_freescan (int *,int *,int*) ;
 int xfs_dir2_data_log_header (int *,TYPE_5__*) ;
 int xfs_dir2_data_make_free (int *,TYPE_5__*,int ,int ,int*,int*) ;
 int xfs_dir2_dataptr_to_off (int *,int ) ;

int
xfs_dir2_block_removename(
 xfs_da_args_t *args)
{
 xfs_dir2_block_t *block;
 xfs_dir2_leaf_entry_t *blp;
 xfs_dabuf_t *bp;
 xfs_dir2_block_tail_t *btp;
 xfs_dir2_data_entry_t *dep;
 xfs_inode_t *dp;
 int ent;
 int error;
 xfs_mount_t *mp;
 int needlog;
 int needscan;
 xfs_dir2_sf_hdr_t sfh;
 int size;
 xfs_trans_t *tp;

 trace_xfs_dir2_block_removename(args);





 if ((error = xfs_dir2_block_lookup_int(args, &bp, &ent))) {
  return error;
 }
 dp = args->dp;
 tp = args->trans;
 mp = dp->i_mount;
 block = bp->data;
 btp = xfs_dir2_block_tail_p(mp, block);
 blp = xfs_dir2_block_leaf_p(btp);



 dep = (xfs_dir2_data_entry_t *)
       ((char *)block + xfs_dir2_dataptr_to_off(mp, be32_to_cpu(blp[ent].address)));



 needlog = needscan = 0;
 xfs_dir2_data_make_free(tp, bp,
  (xfs_dir2_data_aoff_t)((char *)dep - (char *)block),
  xfs_dir2_data_entsize(dep->namelen), &needlog, &needscan);



 be32_add_cpu(&btp->stale, 1);
 xfs_dir2_block_log_tail(tp, bp);



 blp[ent].address = cpu_to_be32(XFS_DIR2_NULL_DATAPTR);
 xfs_dir2_block_log_leaf(tp, bp, ent, ent);



 if (needscan)
  xfs_dir2_data_freescan(mp, (xfs_dir2_data_t *)block, &needlog);
 if (needlog)
  xfs_dir2_data_log_header(tp, bp);
 xfs_dir2_data_check(dp, bp);



 if ((size = xfs_dir2_block_sfsize(dp, block, &sfh)) >
     XFS_IFORK_DSIZE(dp)) {
  xfs_da_buf_done(bp);
  return 0;
 }



 return xfs_dir2_block_to_sf(args, bp, size, &sfh);
}
