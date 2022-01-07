
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kstat {int ino; int mode; } ;
struct inode {int dummy; } ;
struct fuse_inode {scalar_t__ i_time; int orig_ino; int orig_i_mode; } ;
struct file {int dummy; } ;


 int fuse_do_getattr (struct inode*,struct kstat*,struct file*) ;
 int generic_fillattr (struct inode*,struct kstat*) ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;
 scalar_t__ get_jiffies_64 () ;

int fuse_update_attributes(struct inode *inode, struct kstat *stat,
      struct file *file, bool *refreshed)
{
 struct fuse_inode *fi = get_fuse_inode(inode);
 int err;
 bool r;

 if (fi->i_time < get_jiffies_64()) {
  r = 1;
  err = fuse_do_getattr(inode, stat, file);
 } else {
  r = 0;
  err = 0;
  if (stat) {
   generic_fillattr(inode, stat);
   stat->mode = fi->orig_i_mode;
   stat->ino = fi->orig_ino;
  }
 }

 if (refreshed != ((void*)0))
  *refreshed = r;

 return err;
}
