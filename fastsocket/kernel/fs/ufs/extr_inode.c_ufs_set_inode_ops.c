
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; int i_mode; TYPE_1__* i_mapping; int * i_op; int i_blocks; int * i_fop; } ;
struct TYPE_2__ {int * a_ops; } ;


 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int UFS_I (struct inode*) ;
 int init_special_inode (struct inode*,int ,int ) ;
 int page_symlink_inode_operations ;
 int ufs_aops ;
 int ufs_dir_inode_operations ;
 int ufs_dir_operations ;
 int ufs_fast_symlink_inode_operations ;
 int ufs_file_inode_operations ;
 int ufs_file_operations ;
 int ufs_get_inode_dev (int ,int ) ;

__attribute__((used)) static void ufs_set_inode_ops(struct inode *inode)
{
 if (S_ISREG(inode->i_mode)) {
  inode->i_op = &ufs_file_inode_operations;
  inode->i_fop = &ufs_file_operations;
  inode->i_mapping->a_ops = &ufs_aops;
 } else if (S_ISDIR(inode->i_mode)) {
  inode->i_op = &ufs_dir_inode_operations;
  inode->i_fop = &ufs_dir_operations;
  inode->i_mapping->a_ops = &ufs_aops;
 } else if (S_ISLNK(inode->i_mode)) {
  if (!inode->i_blocks)
   inode->i_op = &ufs_fast_symlink_inode_operations;
  else {
   inode->i_op = &page_symlink_inode_operations;
   inode->i_mapping->a_ops = &ufs_aops;
  }
 } else
  init_special_inode(inode, inode->i_mode,
       ufs_get_inode_dev(inode->i_sb, UFS_I(inode)));
}
