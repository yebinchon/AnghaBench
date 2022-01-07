
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int * i_op; } ;


 int configfs_symlink_inode_operations ;

__attribute__((used)) static int init_symlink(struct inode * inode)
{
 inode->i_op = &configfs_symlink_inode_operations;
 return 0;
}
