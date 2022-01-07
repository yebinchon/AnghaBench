
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {scalar_t__ mnt_id; } ;


 int EAGAIN ;
 int GFP_KERNEL ;
 int ida_get_new_above (int *,scalar_t__,scalar_t__*) ;
 int ida_pre_get (int *,int ) ;
 int mnt_id_ida ;
 scalar_t__ mnt_id_start ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vfsmount_lock ;

__attribute__((used)) static int mnt_alloc_id(struct vfsmount *mnt)
{
 int res;

retry:
 ida_pre_get(&mnt_id_ida, GFP_KERNEL);
 spin_lock(&vfsmount_lock);
 res = ida_get_new_above(&mnt_id_ida, mnt_id_start, &mnt->mnt_id);
 if (!res)
  mnt_id_start = mnt->mnt_id + 1;
 spin_unlock(&vfsmount_lock);
 if (res == -EAGAIN)
  goto retry;

 return res;
}
