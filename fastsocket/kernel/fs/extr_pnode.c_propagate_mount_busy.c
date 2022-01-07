
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_mounts; int mnt_mountpoint; struct vfsmount* mnt_parent; } ;


 struct vfsmount* __lookup_mnt (struct vfsmount*,int ,int ) ;
 int do_refcount_check (struct vfsmount*,int) ;
 scalar_t__ list_empty (int *) ;
 struct vfsmount* propagation_next (struct vfsmount*,struct vfsmount*) ;

int propagate_mount_busy(struct vfsmount *mnt, int refcnt)
{
 struct vfsmount *m, *child;
 struct vfsmount *parent = mnt->mnt_parent;
 int ret = 0;

 if (mnt == parent)
  return do_refcount_check(mnt, refcnt);






 if (!list_empty(&mnt->mnt_mounts) || do_refcount_check(mnt, refcnt))
  return 1;

 for (m = propagation_next(parent, parent); m;
        m = propagation_next(m, parent)) {
  child = __lookup_mnt(m, mnt->mnt_mountpoint, 0);
  if (child && list_empty(&child->mnt_mounts) &&
      (ret = do_refcount_check(child, 1)))
   break;
 }
 return ret;
}
