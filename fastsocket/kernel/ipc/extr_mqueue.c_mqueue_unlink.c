
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_size; int i_atime; int i_mtime; int i_ctime; } ;
struct dentry {struct inode* d_inode; } ;


 int CURRENT_TIME ;
 scalar_t__ DIRENT_SIZE ;
 int dput (struct dentry*) ;
 int drop_nlink (struct inode*) ;

__attribute__((used)) static int mqueue_unlink(struct inode *dir, struct dentry *dentry)
{
   struct inode *inode = dentry->d_inode;

 dir->i_ctime = dir->i_mtime = dir->i_atime = CURRENT_TIME;
 dir->i_size -= DIRENT_SIZE;
   drop_nlink(inode);
   dput(dentry);
   return 0;
}
