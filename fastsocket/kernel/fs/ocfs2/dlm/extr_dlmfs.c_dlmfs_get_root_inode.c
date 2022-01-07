
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {int i_mode; int * i_op; int * i_fop; int i_ctime; int i_mtime; int i_atime; TYPE_1__* i_mapping; int i_gid; int i_uid; } ;
struct dlmfs_inode_private {int dummy; } ;
struct TYPE_2__ {int * backing_dev_info; } ;


 int CURRENT_TIME ;
 struct dlmfs_inode_private* DLMFS_I (struct inode*) ;
 int S_IFDIR ;
 int current_fsgid () ;
 int current_fsuid () ;
 int dlmfs_backing_dev_info ;
 int dlmfs_root_inode_operations ;
 int inc_nlink (struct inode*) ;
 struct inode* new_inode (struct super_block*) ;
 int simple_dir_operations ;

__attribute__((used)) static struct inode *dlmfs_get_root_inode(struct super_block *sb)
{
 struct inode *inode = new_inode(sb);
 int mode = S_IFDIR | 0755;
 struct dlmfs_inode_private *ip;

 if (inode) {
  ip = DLMFS_I(inode);

  inode->i_mode = mode;
  inode->i_uid = current_fsuid();
  inode->i_gid = current_fsgid();
  inode->i_mapping->backing_dev_info = &dlmfs_backing_dev_info;
  inode->i_atime = inode->i_mtime = inode->i_ctime = CURRENT_TIME;
  inc_nlink(inode);

  inode->i_fop = &simple_dir_operations;
  inode->i_op = &dlmfs_root_inode_operations;
 }

 return inode;
}
