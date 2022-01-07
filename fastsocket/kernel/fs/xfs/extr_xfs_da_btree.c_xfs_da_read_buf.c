
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_trans_t ;
typedef int xfs_inode_t ;
typedef int xfs_daddr_t ;
typedef int xfs_dabuf_t ;
typedef int xfs_dablk_t ;
typedef int inst_t ;


 scalar_t__ __return_address ;
 int xfs_da_do_buf (int *,int *,int ,int *,int **,int,int,int *) ;

int
xfs_da_read_buf(
 xfs_trans_t *trans,
 xfs_inode_t *dp,
 xfs_dablk_t bno,
 xfs_daddr_t mappedbno,
 xfs_dabuf_t **bpp,
 int whichfork)
{
 return xfs_da_do_buf(trans, dp, bno, &mappedbno, bpp, whichfork, 1,
  (inst_t *)__return_address);
}
