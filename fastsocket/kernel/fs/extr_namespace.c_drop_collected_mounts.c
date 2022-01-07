
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;


 int LIST_HEAD (int ) ;
 int down_write (int *) ;
 int namespace_sem ;
 int release_mounts (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int umount_list ;
 int umount_tree (struct vfsmount*,int ,int *) ;
 int up_write (int *) ;
 int vfsmount_lock ;

void drop_collected_mounts(struct vfsmount *mnt)
{
 LIST_HEAD(umount_list);
 down_write(&namespace_sem);
 spin_lock(&vfsmount_lock);
 umount_tree(mnt, 0, &umount_list);
 spin_unlock(&vfsmount_lock);
 up_write(&namespace_sem);
 release_mounts(&umount_list);
}
