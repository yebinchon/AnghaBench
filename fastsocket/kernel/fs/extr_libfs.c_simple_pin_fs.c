
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct file_system_type {int name; } ;


 scalar_t__ IS_ERR (struct vfsmount*) ;
 int PTR_ERR (struct vfsmount*) ;
 int mntget (struct vfsmount*) ;
 int mntput (struct vfsmount*) ;
 int pin_fs_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 struct vfsmount* vfs_kern_mount (struct file_system_type*,int ,int ,int *) ;

int simple_pin_fs(struct file_system_type *type, struct vfsmount **mount, int *count)
{
 struct vfsmount *mnt = ((void*)0);
 spin_lock(&pin_fs_lock);
 if (unlikely(!*mount)) {
  spin_unlock(&pin_fs_lock);
  mnt = vfs_kern_mount(type, 0, type->name, ((void*)0));
  if (IS_ERR(mnt))
   return PTR_ERR(mnt);
  spin_lock(&pin_fs_lock);
  if (!*mount)
   *mount = mnt;
 }
 mntget(*mount);
 ++*count;
 spin_unlock(&pin_fs_lock);
 mntput(mnt);
 return 0;
}
