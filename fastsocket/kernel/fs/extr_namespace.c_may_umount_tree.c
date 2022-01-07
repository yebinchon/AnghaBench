
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_count; } ;


 scalar_t__ atomic_read (int *) ;
 struct vfsmount* next_mnt (struct vfsmount*,struct vfsmount*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vfsmount_lock ;

int may_umount_tree(struct vfsmount *mnt)
{
 int actual_refs = 0;
 int minimum_refs = 0;
 struct vfsmount *p;

 spin_lock(&vfsmount_lock);
 for (p = mnt; p; p = next_mnt(p, mnt)) {
  actual_refs += atomic_read(&p->mnt_count);
  minimum_refs += 2;
 }
 spin_unlock(&vfsmount_lock);

 if (actual_refs > minimum_refs)
  return 0;

 return 1;
}
