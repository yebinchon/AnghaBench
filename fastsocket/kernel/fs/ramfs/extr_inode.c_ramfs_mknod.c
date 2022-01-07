
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; int i_ctime; int i_mtime; int i_gid; int i_sb; } ;
struct dentry {int dummy; } ;
typedef int dev_t ;


 int CURRENT_TIME ;
 int ENOSPC ;
 scalar_t__ S_ISDIR (int) ;
 int S_ISGID ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int dget (struct dentry*) ;
 struct inode* ramfs_get_inode (int ,int,int ) ;

__attribute__((used)) static int
ramfs_mknod(struct inode *dir, struct dentry *dentry, int mode, dev_t dev)
{
 struct inode * inode = ramfs_get_inode(dir->i_sb, mode, dev);
 int error = -ENOSPC;

 if (inode) {
  if (dir->i_mode & S_ISGID) {
   inode->i_gid = dir->i_gid;
   if (S_ISDIR(mode))
    inode->i_mode |= S_ISGID;
  }
  d_instantiate(dentry, inode);
  dget(dentry);
  error = 0;
  dir->i_mtime = dir->i_ctime = CURRENT_TIME;
 }
 return error;
}
