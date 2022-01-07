
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct sysfs_dirent* removed_list; } ;
struct sysfs_dirent {TYPE_1__ u; } ;
struct sysfs_addrm_cxt {struct sysfs_dirent* removed; scalar_t__ cnt; struct inode* parent_inode; } ;
struct inode {int i_mutex; int i_mtime; int i_ctime; } ;


 int CURRENT_TIME ;
 int iput (struct inode*) ;
 int mutex_unlock (int *) ;
 int sysfs_deactivate (struct sysfs_dirent*) ;
 int sysfs_drop_dentry (struct sysfs_dirent*) ;
 int sysfs_mutex ;
 int sysfs_put (struct sysfs_dirent*) ;
 int unmap_bin_file (struct sysfs_dirent*) ;

void sysfs_addrm_finish(struct sysfs_addrm_cxt *acxt)
{

 mutex_unlock(&sysfs_mutex);
 if (acxt->parent_inode) {
  struct inode *inode = acxt->parent_inode;


  if (acxt->cnt)
   inode->i_ctime = inode->i_mtime = CURRENT_TIME;

  mutex_unlock(&inode->i_mutex);
  iput(inode);
 }


 while (acxt->removed) {
  struct sysfs_dirent *sd = acxt->removed;

  acxt->removed = sd->u.removed_list;

  sysfs_drop_dentry(sd);
  sysfs_deactivate(sd);
  unmap_bin_file(sd);
  sysfs_put(sd);
 }
}
