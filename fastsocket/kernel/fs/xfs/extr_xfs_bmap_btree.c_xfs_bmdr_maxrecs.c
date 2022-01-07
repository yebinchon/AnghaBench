
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_bmdr_rec_t ;
typedef int xfs_bmdr_ptr_t ;
typedef int xfs_bmdr_key_t ;
typedef int xfs_bmdr_block_t ;
struct xfs_mount {int dummy; } ;



int
xfs_bmdr_maxrecs(
 struct xfs_mount *mp,
 int blocklen,
 int leaf)
{
 blocklen -= sizeof(xfs_bmdr_block_t);

 if (leaf)
  return blocklen / sizeof(xfs_bmdr_rec_t);
 return blocklen / (sizeof(xfs_bmdr_key_t) + sizeof(xfs_bmdr_ptr_t));
}
