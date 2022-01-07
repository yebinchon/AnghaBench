
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_id; } ;


 int ida_remove (int *,int) ;
 int mnt_id_ida ;
 int mnt_id_start ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vfsmount_lock ;

__attribute__((used)) static void mnt_free_id(struct vfsmount *mnt)
{
 int id = mnt->mnt_id;
 spin_lock(&vfsmount_lock);
 ida_remove(&mnt_id_ida, id);
 if (mnt_id_start > id)
  mnt_id_start = id;
 spin_unlock(&vfsmount_lock);
}
