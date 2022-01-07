
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dentry {TYPE_3__* d_inode; } ;
typedef int mode_t ;
struct TYPE_7__ {int i_mutex; } ;
struct TYPE_6__ {TYPE_1__* mnt_sb; } ;
struct TYPE_5__ {struct dentry* s_root; } ;


 int EFAULT ;
 int IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int S_IFDIR ;
 int S_IFMT ;
 int dbg (char*) ;
 struct dentry* lookup_one_len (char const*,struct dentry*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strlen (char const*) ;
 int usbfs_create (TYPE_3__*,struct dentry*,int) ;
 int usbfs_mkdir (TYPE_3__*,struct dentry*,int) ;
 TYPE_2__* usbfs_mount ;

__attribute__((used)) static int fs_create_by_name (const char *name, mode_t mode,
         struct dentry *parent, struct dentry **dentry)
{
 int error = 0;






 if (!parent ) {
  if (usbfs_mount && usbfs_mount->mnt_sb) {
   parent = usbfs_mount->mnt_sb->s_root;
  }
 }

 if (!parent) {
  dbg("Ah! can not find a parent!");
  return -EFAULT;
 }

 *dentry = ((void*)0);
 mutex_lock(&parent->d_inode->i_mutex);
 *dentry = lookup_one_len(name, parent, strlen(name));
 if (!IS_ERR(*dentry)) {
  if ((mode & S_IFMT) == S_IFDIR)
   error = usbfs_mkdir (parent->d_inode, *dentry, mode);
  else
   error = usbfs_create (parent->d_inode, *dentry, mode);
 } else
  error = PTR_ERR(*dentry);
 mutex_unlock(&parent->d_inode->i_mutex);

 return error;
}
