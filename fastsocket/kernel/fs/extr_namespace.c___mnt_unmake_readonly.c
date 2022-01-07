
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_flags; } ;


 int MNT_READONLY ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vfsmount_lock ;

__attribute__((used)) static void __mnt_unmake_readonly(struct vfsmount *mnt)
{
 spin_lock(&vfsmount_lock);
 mnt->mnt_flags &= ~MNT_READONLY;
 spin_unlock(&vfsmount_lock);
}
