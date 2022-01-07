
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int xfs_trans_t ;
typedef int xfs_inode_t ;
typedef int xfs_daddr_t ;
struct TYPE_10__ {TYPE_2__* data; } ;
typedef TYPE_1__ xfs_dabuf_t ;
struct TYPE_11__ {int magic; } ;
typedef TYPE_2__ xfs_da_blkinfo_t ;


 int EIO ;
 int XFS_ATTR_FORK ;
 scalar_t__ XFS_ATTR_LEAF_MAGIC ;
 scalar_t__ XFS_DA_NODE_MAGIC ;
 int XFS_ERROR (int ) ;
 scalar_t__ be16_to_cpu (int ) ;
 int xfs_attr_leaf_inactive (int **,int *,TYPE_1__*) ;
 int xfs_attr_node_inactive (int **,int *,TYPE_1__*,int) ;
 int xfs_da_binval (int *,TYPE_1__*) ;
 int xfs_da_blkno (TYPE_1__*) ;
 int xfs_da_brelse (int *,TYPE_1__*) ;
 int xfs_da_get_buf (int *,int *,int ,int ,TYPE_1__**,int ) ;
 int xfs_da_read_buf (int *,int *,int ,int,TYPE_1__**,int ) ;
 int xfs_trans_roll (int **,int *) ;

int
xfs_attr_root_inactive(xfs_trans_t **trans, xfs_inode_t *dp)
{
 xfs_da_blkinfo_t *info;
 xfs_daddr_t blkno;
 xfs_dabuf_t *bp;
 int error;







 error = xfs_da_read_buf(*trans, dp, 0, -1, &bp, XFS_ATTR_FORK);
 if (error)
  return(error);
 blkno = xfs_da_blkno(bp);





 info = bp->data;
 if (be16_to_cpu(info->magic) == XFS_DA_NODE_MAGIC) {
  error = xfs_attr_node_inactive(trans, dp, bp, 1);
 } else if (be16_to_cpu(info->magic) == XFS_ATTR_LEAF_MAGIC) {
  error = xfs_attr_leaf_inactive(trans, dp, bp);
 } else {
  error = XFS_ERROR(EIO);
  xfs_da_brelse(*trans, bp);
 }
 if (error)
  return(error);




 error = xfs_da_get_buf(*trans, dp, 0, blkno, &bp, XFS_ATTR_FORK);
 if (error)
  return(error);
 xfs_da_binval(*trans, bp);



 error = xfs_trans_roll(trans, dp);

 return (error);
}
