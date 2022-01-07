
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int xfs_trans_t ;
typedef int xfs_mount_t ;
struct TYPE_18__ {int * i_mount; } ;
typedef TYPE_3__ xfs_inode_t ;
struct TYPE_19__ {scalar_t__ bestcount; } ;
typedef TYPE_4__ xfs_dir2_leaf_tail_t ;
struct TYPE_16__ {scalar_t__ back; scalar_t__ forw; int magic; } ;
struct TYPE_17__ {scalar_t__ stale; scalar_t__ count; TYPE_1__ info; } ;
struct TYPE_20__ {TYPE_2__ hdr; } ;
typedef TYPE_5__ xfs_dir2_leaf_t ;
typedef scalar_t__ xfs_dir2_db_t ;
struct TYPE_21__ {TYPE_5__* data; } ;
typedef TYPE_6__ xfs_dabuf_t ;
struct TYPE_22__ {int * trans; TYPE_3__* dp; } ;
typedef TYPE_7__ xfs_da_args_t ;


 int ASSERT (int) ;
 int XFS_DATA_FORK ;
 scalar_t__ XFS_DIR2_FREE_FIRSTDB (int *) ;
 int XFS_DIR2_LEAF1_MAGIC ;
 scalar_t__ XFS_DIR2_LEAF_FIRSTDB (int *) ;
 int cpu_to_be16 (int) ;
 int xfs_da_get_buf (int *,TYPE_3__*,int ,int,TYPE_6__**,int ) ;
 int xfs_dir2_db_to_da (int *,scalar_t__) ;
 int xfs_dir2_leaf_log_header (int *,TYPE_6__*) ;
 int xfs_dir2_leaf_log_tail (int *,TYPE_6__*) ;
 TYPE_4__* xfs_dir2_leaf_tail_p (int *,TYPE_5__*) ;

int
xfs_dir2_leaf_init(
 xfs_da_args_t *args,
 xfs_dir2_db_t bno,
 xfs_dabuf_t **bpp,
 int magic)
{
 xfs_dabuf_t *bp;
 xfs_inode_t *dp;
 int error;
 xfs_dir2_leaf_t *leaf;
 xfs_dir2_leaf_tail_t *ltp;
 xfs_mount_t *mp;
 xfs_trans_t *tp;

 dp = args->dp;
 ASSERT(dp != ((void*)0));
 tp = args->trans;
 mp = dp->i_mount;
 ASSERT(bno >= XFS_DIR2_LEAF_FIRSTDB(mp) &&
        bno < XFS_DIR2_FREE_FIRSTDB(mp));



 error = xfs_da_get_buf(tp, dp, xfs_dir2_db_to_da(mp, bno), -1, &bp,
  XFS_DATA_FORK);
 if (error) {
  return error;
 }
 ASSERT(bp != ((void*)0));
 leaf = bp->data;



 leaf->hdr.info.magic = cpu_to_be16(magic);
 leaf->hdr.info.forw = 0;
 leaf->hdr.info.back = 0;
 leaf->hdr.count = 0;
 leaf->hdr.stale = 0;
 xfs_dir2_leaf_log_header(tp, bp);





 if (magic == XFS_DIR2_LEAF1_MAGIC) {
  ltp = xfs_dir2_leaf_tail_p(mp, leaf);
  ltp->bestcount = 0;
  xfs_dir2_leaf_log_tail(tp, bp);
 }
 *bpp = bp;
 return 0;
}
