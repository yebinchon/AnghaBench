
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {scalar_t__ mnt_root; } ;
struct path {scalar_t__ dentry; struct vfsmount* mnt; } ;


 int CAP_SYS_ADMIN ;
 int EINVAL ;
 int EPERM ;
 int MS_REC ;
 int MS_SHARED ;
 int capable (int ) ;
 int change_mnt_propagation (struct vfsmount*,int) ;
 int down_write (int *) ;
 int invent_group_ids (struct vfsmount*,int) ;
 int namespace_sem ;
 struct vfsmount* next_mnt (struct vfsmount*,struct vfsmount*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int up_write (int *) ;
 int vfsmount_lock ;

__attribute__((used)) static int do_change_type(struct path *path, int flag)
{
 struct vfsmount *m, *mnt = path->mnt;
 int recurse = flag & MS_REC;
 int type = flag & ~MS_REC;
 int err = 0;

 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 if (path->dentry != path->mnt->mnt_root)
  return -EINVAL;

 down_write(&namespace_sem);
 if (type == MS_SHARED) {
  err = invent_group_ids(mnt, recurse);
  if (err)
   goto out_unlock;
 }

 spin_lock(&vfsmount_lock);
 for (m = mnt; m; m = (recurse ? next_mnt(m, mnt) : ((void*)0)))
  change_mnt_propagation(m, type);
 spin_unlock(&vfsmount_lock);

 out_unlock:
 up_write(&namespace_sem);
 return err;
}
