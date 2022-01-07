
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;


 scalar_t__ IS_MNT_UNBINDABLE (struct vfsmount*) ;
 struct vfsmount* next_mnt (struct vfsmount*,struct vfsmount*) ;

__attribute__((used)) static inline int tree_contains_unbindable(struct vfsmount *mnt)
{
 struct vfsmount *p;
 for (p = mnt; p; p = next_mnt(p, mnt)) {
  if (IS_MNT_UNBINDABLE(p))
   return 1;
 }
 return 0;
}
