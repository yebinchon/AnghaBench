
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int i_mode; int * i_fop; int * i_op; int i_ctime; int i_mtime; int i_atime; scalar_t__ i_gid; scalar_t__ i_uid; } ;
typedef int dev_t ;


 int CURRENT_TIME ;

 int S_IFMT ;

 int inc_nlink (struct inode*) ;
 struct inode* new_inode (struct super_block*) ;
 int pstore_dir_inode_operations ;
 int pstore_file_operations ;
 int simple_dir_operations ;

__attribute__((used)) static struct inode *pstore_get_inode(struct super_block *sb,
     const struct inode *dir, int mode, dev_t dev)
{
 struct inode *inode = new_inode(sb);

 if (inode) {
  inode->i_uid = inode->i_gid = 0;
  inode->i_mode = mode;
  inode->i_atime = inode->i_mtime = inode->i_ctime = CURRENT_TIME;
  switch (mode & S_IFMT) {
  case 128:
   inode->i_fop = &pstore_file_operations;
   break;
  case 129:
   inode->i_op = &pstore_dir_inode_operations;
   inode->i_fop = &simple_dir_operations;
   inc_nlink(inode);
   break;
  }
 }
 return inode;
}
