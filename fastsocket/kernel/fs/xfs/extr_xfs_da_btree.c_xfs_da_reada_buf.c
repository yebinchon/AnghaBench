
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_trans_t ;
typedef int xfs_inode_t ;
typedef int xfs_daddr_t ;
typedef int xfs_dablk_t ;
typedef int inst_t ;


 scalar_t__ __return_address ;
 scalar_t__ xfs_da_do_buf (int *,int *,int ,int*,int *,int,int,int *) ;

xfs_daddr_t
xfs_da_reada_buf(
 xfs_trans_t *trans,
 xfs_inode_t *dp,
 xfs_dablk_t bno,
 int whichfork)
{
 xfs_daddr_t rval;

 rval = -1;
 if (xfs_da_do_buf(trans, dp, bno, &rval, ((void*)0), whichfork, 3,
   (inst_t *)__return_address))
  return -1;
 else
  return rval;
}
