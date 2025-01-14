
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ctime; int i_mtime; int i_mode; } ;
struct dentry {struct inode* d_inode; } ;


 int CURRENT_TIME ;
 int ENOTEMPTY ;
 int S_ISDIR (int ) ;
 int drop_nlink (struct inode*) ;
 int inc_nlink (struct inode*) ;
 int simple_empty (struct dentry*) ;
 int simple_unlink (struct inode*,struct dentry*) ;

int simple_rename(struct inode *old_dir, struct dentry *old_dentry,
  struct inode *new_dir, struct dentry *new_dentry)
{
 struct inode *inode = old_dentry->d_inode;
 int they_are_dirs = S_ISDIR(old_dentry->d_inode->i_mode);

 if (!simple_empty(new_dentry))
  return -ENOTEMPTY;

 if (new_dentry->d_inode) {
  simple_unlink(new_dir, new_dentry);
  if (they_are_dirs)
   drop_nlink(old_dir);
 } else if (they_are_dirs) {
  drop_nlink(old_dir);
  inc_nlink(new_dir);
 }

 old_dir->i_ctime = old_dir->i_mtime = new_dir->i_ctime =
  new_dir->i_mtime = inode->i_ctime = CURRENT_TIME;

 return 0;
}
