
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct dentry {int d_count; TYPE_1__ d_name; scalar_t__ d_inode; struct configfs_dirent* d_fsdata; int d_parent; } ;
struct configfs_dirent {int s_sibling; } ;


 int atomic_read (int *) ;
 int configfs_dirent_lock ;
 int configfs_put (struct configfs_dirent*) ;
 struct dentry* dget (int ) ;
 int dput (struct dentry*) ;
 int list_del_init (int *) ;
 int pr_debug (char*,int ,int ) ;
 int simple_rmdir (scalar_t__,struct dentry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void remove_dir(struct dentry * d)
{
 struct dentry * parent = dget(d->d_parent);
 struct configfs_dirent * sd;

 sd = d->d_fsdata;
 spin_lock(&configfs_dirent_lock);
 list_del_init(&sd->s_sibling);
 spin_unlock(&configfs_dirent_lock);
 configfs_put(sd);
 if (d->d_inode)
  simple_rmdir(parent->d_inode,d);

 pr_debug(" o %s removing done (%d)\n",d->d_name.name,
   atomic_read(&d->d_count));

 dput(parent);
}
