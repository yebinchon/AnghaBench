
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int * i_fop; int * i_op; } ;


 int fuse_dir_inode_operations ;
 int fuse_dir_operations ;

void fuse_init_dir(struct inode *inode)
{
 inode->i_op = &fuse_dir_inode_operations;
 inode->i_fop = &fuse_dir_operations;
}
