
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int * i_fop; int * i_op; } ;


 int configfs_dir_inode_operations ;
 int configfs_dir_operations ;
 int inc_nlink (struct inode*) ;

__attribute__((used)) static int init_dir(struct inode * inode)
{
 inode->i_op = &configfs_dir_inode_operations;
 inode->i_fop = &configfs_dir_operations;


 inc_nlink(inode);
 return 0;
}
