
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int sector_t ;


 int EXT4_INODE_EXTENTS ;
 int ext4_ext_calc_metadata_amount (struct inode*,int ) ;
 int ext4_indirect_calc_metadata_amount (struct inode*,int ) ;
 scalar_t__ ext4_test_inode_flag (struct inode*,int ) ;

__attribute__((used)) static int ext4_calc_metadata_amount(struct inode *inode, sector_t lblock)
{
 if (ext4_test_inode_flag(inode, EXT4_INODE_EXTENTS))
  return ext4_ext_calc_metadata_amount(inode, lblock);

 return ext4_indirect_calc_metadata_amount(inode, lblock);
}
