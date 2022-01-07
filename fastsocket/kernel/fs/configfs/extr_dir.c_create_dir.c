
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct TYPE_2__ {int name; } ;
struct dentry {struct configfs_dirent* d_fsdata; int * d_op; int d_inode; TYPE_1__ d_name; } ;
struct configfs_dirent {int s_sibling; } ;
struct config_item {int dummy; } ;


 int CONFIGFS_DIR ;
 int CONFIGFS_USET_CREATING ;
 int S_IFDIR ;
 int S_IRUGO ;
 int S_IRWXU ;
 int S_IXUGO ;
 int configfs_create (struct dentry*,int,int ) ;
 int configfs_dentry_ops ;
 int configfs_dirent_exists (struct configfs_dirent*,int ) ;
 int configfs_dirent_lock ;
 int configfs_make_dirent (struct configfs_dirent*,struct dentry*,struct config_item*,int,int) ;
 int configfs_put (struct configfs_dirent*) ;
 int configfs_set_dir_dirent_depth (struct configfs_dirent*,struct configfs_dirent*) ;
 int inc_nlink (int ) ;
 int init_dir ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int create_dir(struct config_item * k, struct dentry * p,
        struct dentry * d)
{
 int error;
 umode_t mode = S_IFDIR| S_IRWXU | S_IRUGO | S_IXUGO;

 error = configfs_dirent_exists(p->d_fsdata, d->d_name.name);
 if (!error)
  error = configfs_make_dirent(p->d_fsdata, d, k, mode,
          CONFIGFS_DIR | CONFIGFS_USET_CREATING);
 if (!error) {
  configfs_set_dir_dirent_depth(p->d_fsdata, d->d_fsdata);
  error = configfs_create(d, mode, init_dir);
  if (!error) {
   inc_nlink(p->d_inode);
   (d)->d_op = &configfs_dentry_ops;
  } else {
   struct configfs_dirent *sd = d->d_fsdata;
   if (sd) {
    spin_lock(&configfs_dirent_lock);
    list_del_init(&sd->s_sibling);
    spin_unlock(&configfs_dirent_lock);
    configfs_put(sd);
   }
  }
 }
 return error;
}
