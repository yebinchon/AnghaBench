
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int * i_op; } ;


 int fuse_common_inode_operations ;

void fuse_init_common(struct inode *inode)
{
 inode->i_op = &fuse_common_inode_operations;
}
