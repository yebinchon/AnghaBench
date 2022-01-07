
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_expire; } ;
struct list_head {int dummy; } ;


 int down_write (int *) ;
 int list_add_tail (int *,struct list_head*) ;
 int namespace_sem ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int up_write (int *) ;
 int vfsmount_lock ;

void mnt_set_expiry(struct vfsmount *mnt, struct list_head *expiry_list)
{
 down_write(&namespace_sem);
 spin_lock(&vfsmount_lock);

 list_add_tail(&mnt->mnt_expire, expiry_list);

 spin_unlock(&vfsmount_lock);
 up_write(&namespace_sem);
}
