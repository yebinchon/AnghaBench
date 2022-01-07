
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ext4_iloc {int dummy; } ;


 int EXT4_STATE_XATTR ;
 int __ext4_get_inode_loc (struct inode*,struct ext4_iloc*,int) ;
 int ext4_test_inode_state (struct inode*,int ) ;

int ext4_get_inode_loc(struct inode *inode, struct ext4_iloc *iloc)
{

 return __ext4_get_inode_loc(inode, iloc,
  !ext4_test_inode_state(inode, EXT4_STATE_XATTR));
}
