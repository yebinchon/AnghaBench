
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ufs_sb_private_info {scalar_t__ fs_magic; } ;
struct TYPE_2__ {int * i_data; int * u2_i_data; } ;
struct ufs_inode_info {TYPE_1__ i_u1; } ;


 int BUG_ON (int) ;
 scalar_t__ UFS2_MAGIC ;
 unsigned int UFS_TIND_BLOCK ;

__attribute__((used)) static inline void *ufs_get_direct_data_ptr(struct ufs_sb_private_info *uspi,
         struct ufs_inode_info *ufsi,
         unsigned blk)
{
 BUG_ON(blk > UFS_TIND_BLOCK);
 return uspi->fs_magic == UFS2_MAGIC ?
  (void *)&ufsi->i_u1.u2_i_data[blk] :
  (void *)&ufsi->i_u1.i_data[blk];
}
