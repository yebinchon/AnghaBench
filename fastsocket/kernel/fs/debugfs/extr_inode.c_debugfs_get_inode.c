
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int i_mode; void* i_private; struct file_operations const* i_fop; int * i_op; int i_ctime; int i_mtime; int i_atime; } ;
struct file_operations {int dummy; } ;
typedef int dev_t ;


 int CURRENT_TIME ;


 int S_IFMT ;

 struct file_operations const debugfs_file_operations ;
 int debugfs_link_operations ;
 int inc_nlink (struct inode*) ;
 int init_special_inode (struct inode*,int,int ) ;
 struct inode* new_inode (struct super_block*) ;
 int simple_dir_inode_operations ;
 struct file_operations const simple_dir_operations ;

__attribute__((used)) static struct inode *debugfs_get_inode(struct super_block *sb, int mode, dev_t dev,
           void *data, const struct file_operations *fops)

{
 struct inode *inode = new_inode(sb);

 if (inode) {
  inode->i_mode = mode;
  inode->i_atime = inode->i_mtime = inode->i_ctime = CURRENT_TIME;
  switch (mode & S_IFMT) {
  default:
   init_special_inode(inode, mode, dev);
   break;
  case 128:
   inode->i_fop = fops ? fops : &debugfs_file_operations;
   inode->i_private = data;
   break;
  case 129:
   inode->i_op = &debugfs_link_operations;
   inode->i_fop = fops;
   inode->i_private = data;
   break;
  case 130:
   inode->i_op = &simple_dir_inode_operations;
   inode->i_fop = fops ? fops : &simple_dir_operations;
   inode->i_private = data;



   inc_nlink(inode);
   break;
  }
 }
 return inode;
}
