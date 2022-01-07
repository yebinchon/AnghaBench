
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct dentry {struct configfs_dirent* d_fsdata; int * d_op; } ;
struct configfs_symlink {int dummy; } ;
struct configfs_dirent {int s_sibling; } ;


 int CONFIGFS_ITEM_LINK ;
 int S_IFLNK ;
 int S_IRWXUGO ;
 int configfs_create (struct dentry*,int,int ) ;
 int configfs_dentry_ops ;
 int configfs_dirent_lock ;
 int configfs_make_dirent (struct configfs_dirent*,struct dentry*,struct configfs_symlink*,int,int ) ;
 int configfs_put (struct configfs_dirent*) ;
 int init_symlink ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int configfs_create_link(struct configfs_symlink *sl,
    struct dentry *parent,
    struct dentry *dentry)
{
 int err = 0;
 umode_t mode = S_IFLNK | S_IRWXUGO;

 err = configfs_make_dirent(parent->d_fsdata, dentry, sl, mode,
       CONFIGFS_ITEM_LINK);
 if (!err) {
  err = configfs_create(dentry, mode, init_symlink);
  if (!err)
   dentry->d_op = &configfs_dentry_ops;
  else {
   struct configfs_dirent *sd = dentry->d_fsdata;
   if (sd) {
    spin_lock(&configfs_dirent_lock);
    list_del_init(&sd->s_sibling);
    spin_unlock(&configfs_dirent_lock);
    configfs_put(sd);
   }
  }
 }
 return err;
}
