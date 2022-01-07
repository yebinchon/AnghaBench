
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;
typedef int loff_t ;


 int EOPNOTSUPP ;
 int EXT4_INODE_EXTENTS ;
 int S_ISREG (int ) ;
 int ext4_ext_punch_hole (struct inode*,int ,int ) ;
 int ext4_test_inode_flag (struct inode*,int ) ;

int ext4_punch_hole(struct inode *inode, loff_t offset, loff_t length)
{
 if (!S_ISREG(inode->i_mode))
  return -EOPNOTSUPP;

 if (!ext4_test_inode_flag(inode, EXT4_INODE_EXTENTS)) {

  return -EOPNOTSUPP;
 }

 return ext4_ext_punch_hole(inode, offset, length);
}
