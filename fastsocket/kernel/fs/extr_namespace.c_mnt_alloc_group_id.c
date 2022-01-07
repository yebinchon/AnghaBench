
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {scalar_t__ mnt_group_id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ida_get_new_above (int *,scalar_t__,scalar_t__*) ;
 int ida_pre_get (int *,int ) ;
 int mnt_group_ida ;
 scalar_t__ mnt_group_start ;

__attribute__((used)) static int mnt_alloc_group_id(struct vfsmount *mnt)
{
 int res;

 if (!ida_pre_get(&mnt_group_ida, GFP_KERNEL))
  return -ENOMEM;

 res = ida_get_new_above(&mnt_group_ida,
    mnt_group_start,
    &mnt->mnt_group_id);
 if (!res)
  mnt_group_start = mnt->mnt_group_id + 1;

 return res;
}
