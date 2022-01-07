
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {scalar_t__ mnt_group_id; } ;


 int IS_MNT_SHARED (struct vfsmount*) ;
 int mnt_release_group_id (struct vfsmount*) ;
 struct vfsmount* next_mnt (struct vfsmount*,struct vfsmount*) ;

__attribute__((used)) static void cleanup_group_ids(struct vfsmount *mnt, struct vfsmount *end)
{
 struct vfsmount *p;

 for (p = mnt; p != end; p = next_mnt(p, mnt)) {
  if (p->mnt_group_id && !IS_MNT_SHARED(p))
   mnt_release_group_id(p);
 }
}
