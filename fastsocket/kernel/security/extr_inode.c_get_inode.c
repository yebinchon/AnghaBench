
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int i_mode; int * i_fop; int * i_op; int i_ctime; int i_mtime; int i_atime; } ;
typedef int dev_t ;


 int CURRENT_TIME ;

 int S_IFMT ;

 int default_file_ops ;
 int inc_nlink (struct inode*) ;
 int init_special_inode (struct inode*,int,int ) ;
 struct inode* new_inode (struct super_block*) ;
 int simple_dir_inode_operations ;
 int simple_dir_operations ;

__attribute__((used)) static struct inode *get_inode(struct super_block *sb, int mode, dev_t dev)
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
   inode->i_fop = &default_file_ops;
   break;
  case 129:
   inode->i_op = &simple_dir_inode_operations;
   inode->i_fop = &simple_dir_operations;


   inc_nlink(inode);
   break;
  }
 }
 return inode;
}
