
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {int i_mode; int * i_op; int * i_fop; int i_ctime; int i_mtime; int i_atime; TYPE_1__* i_mapping; int i_gid; int i_uid; } ;
typedef int dev_t ;
struct TYPE_3__ {int * backing_dev_info; int * a_ops; } ;


 int CURRENT_TIME ;
 int GFP_HIGHUSER ;


 int S_IFMT ;

 int current_fsgid () ;
 int current_fsuid () ;
 int inc_nlink (struct inode*) ;
 int init_special_inode (struct inode*,int,int ) ;
 int mapping_set_gfp_mask (TYPE_1__*,int ) ;
 int mapping_set_unevictable (TYPE_1__*) ;
 struct inode* new_inode (struct super_block*) ;
 int page_symlink_inode_operations ;
 int ramfs_aops ;
 int ramfs_backing_dev_info ;
 int ramfs_dir_inode_operations ;
 int ramfs_file_inode_operations ;
 int ramfs_file_operations ;
 int simple_dir_operations ;

struct inode *ramfs_get_inode(struct super_block *sb, int mode, dev_t dev)
{
 struct inode * inode = new_inode(sb);

 if (inode) {
  inode->i_mode = mode;
  inode->i_uid = current_fsuid();
  inode->i_gid = current_fsgid();
  inode->i_mapping->a_ops = &ramfs_aops;
  inode->i_mapping->backing_dev_info = &ramfs_backing_dev_info;
  mapping_set_gfp_mask(inode->i_mapping, GFP_HIGHUSER);
  mapping_set_unevictable(inode->i_mapping);
  inode->i_atime = inode->i_mtime = inode->i_ctime = CURRENT_TIME;
  switch (mode & S_IFMT) {
  default:
   init_special_inode(inode, mode, dev);
   break;
  case 128:
   inode->i_op = &ramfs_file_inode_operations;
   inode->i_fop = &ramfs_file_operations;
   break;
  case 130:
   inode->i_op = &ramfs_dir_inode_operations;
   inode->i_fop = &simple_dir_operations;


   inc_nlink(inode);
   break;
  case 129:
   inode->i_op = &page_symlink_inode_operations;
   break;
  }
 }
 return inode;
}
