
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_3__ {struct dentry* dentry; } ;
struct file {struct configfs_dirent* private_data; TYPE_1__ f_path; } ;
struct dentry {TYPE_2__* d_inode; } ;
struct configfs_dirent {int s_sibling; } ;
struct TYPE_4__ {int i_mutex; } ;


 int configfs_dirent_lock ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int release_configfs_dirent (struct configfs_dirent*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int configfs_dir_close(struct inode *inode, struct file *file)
{
 struct dentry * dentry = file->f_path.dentry;
 struct configfs_dirent * cursor = file->private_data;

 mutex_lock(&dentry->d_inode->i_mutex);
 spin_lock(&configfs_dirent_lock);
 list_del_init(&cursor->s_sibling);
 spin_unlock(&configfs_dirent_lock);
 mutex_unlock(&dentry->d_inode->i_mutex);

 release_configfs_dirent(cursor);

 return 0;
}
