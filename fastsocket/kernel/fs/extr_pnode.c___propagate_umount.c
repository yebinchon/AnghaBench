
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_hash; int mnt_mounts; int mnt_mountpoint; struct vfsmount* mnt_parent; } ;


 int BUG_ON (int) ;
 struct vfsmount* __lookup_mnt (struct vfsmount*,int ,int ) ;
 scalar_t__ list_empty (int *) ;
 int list_move_tail (int *,int *) ;
 struct vfsmount* propagation_next (struct vfsmount*,struct vfsmount*) ;

__attribute__((used)) static void __propagate_umount(struct vfsmount *mnt)
{
 struct vfsmount *parent = mnt->mnt_parent;
 struct vfsmount *m;

 BUG_ON(parent == mnt);

 for (m = propagation_next(parent, parent); m;
   m = propagation_next(m, parent)) {

  struct vfsmount *child = __lookup_mnt(m,
     mnt->mnt_mountpoint, 0);




  if (child && list_empty(&child->mnt_mounts))
   list_move_tail(&child->mnt_hash, &mnt->mnt_hash);
 }
}
