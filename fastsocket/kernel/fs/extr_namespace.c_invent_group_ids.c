
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_group_id; } ;


 int IS_MNT_SHARED (struct vfsmount*) ;
 int cleanup_group_ids (struct vfsmount*,struct vfsmount*) ;
 int mnt_alloc_group_id (struct vfsmount*) ;
 struct vfsmount* next_mnt (struct vfsmount*,struct vfsmount*) ;

__attribute__((used)) static int invent_group_ids(struct vfsmount *mnt, bool recurse)
{
 struct vfsmount *p;

 for (p = mnt; p; p = recurse ? next_mnt(p, mnt) : ((void*)0)) {
  if (!p->mnt_group_id && !IS_MNT_SHARED(p)) {
   int err = mnt_alloc_group_id(p);
   if (err) {
    cleanup_group_ids(mnt, p);
    return err;
   }
  }
 }

 return 0;
}
