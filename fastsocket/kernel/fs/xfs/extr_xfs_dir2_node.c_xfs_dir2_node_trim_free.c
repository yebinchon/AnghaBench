
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int xfs_trans_t ;
typedef int xfs_mount_t ;
struct TYPE_13__ {int * i_mount; } ;
typedef TYPE_2__ xfs_inode_t ;
typedef scalar_t__ xfs_fileoff_t ;
struct TYPE_12__ {int nused; int magic; } ;
struct TYPE_14__ {TYPE_1__ hdr; } ;
typedef TYPE_3__ xfs_dir2_free_t ;
struct TYPE_15__ {TYPE_3__* data; } ;
typedef TYPE_4__ xfs_dabuf_t ;
typedef int xfs_dablk_t ;
struct TYPE_16__ {int * trans; TYPE_2__* dp; } ;
typedef TYPE_5__ xfs_da_args_t ;


 int ASSERT (int) ;
 int ENOSPC ;
 int XFS_DATA_FORK ;
 scalar_t__ XFS_DIR2_FREE_MAGIC ;
 scalar_t__ be32_to_cpu (int ) ;
 scalar_t__ unlikely (int) ;
 int xfs_da_brelse (int *,TYPE_4__*) ;
 int xfs_da_read_buf (int *,TYPE_2__*,int ,int,TYPE_4__**,int ) ;
 int xfs_dir2_da_to_db (int *,int ) ;
 int xfs_dir2_shrink_inode (TYPE_5__*,int ,TYPE_4__*) ;

int
xfs_dir2_node_trim_free(
 xfs_da_args_t *args,
 xfs_fileoff_t fo,
 int *rvalp)
{
 xfs_dabuf_t *bp;
 xfs_inode_t *dp;
 int error;
 xfs_dir2_free_t *free;
 xfs_mount_t *mp;
 xfs_trans_t *tp;

 dp = args->dp;
 mp = dp->i_mount;
 tp = args->trans;



 if (unlikely(error = xfs_da_read_buf(tp, dp, (xfs_dablk_t)fo, -2, &bp,
   XFS_DATA_FORK))) {
  return error;
 }





 if (bp == ((void*)0)) {
  return 0;
 }
 free = bp->data;
 ASSERT(be32_to_cpu(free->hdr.magic) == XFS_DIR2_FREE_MAGIC);



 if (be32_to_cpu(free->hdr.nused) > 0) {
  xfs_da_brelse(tp, bp);
  *rvalp = 0;
  return 0;
 }



 if ((error =
     xfs_dir2_shrink_inode(args, xfs_dir2_da_to_db(mp, (xfs_dablk_t)fo),
      bp))) {





  ASSERT(error != ENOSPC);
  xfs_da_brelse(tp, bp);
  return error;
 }



 *rvalp = 1;
 return 0;
}
