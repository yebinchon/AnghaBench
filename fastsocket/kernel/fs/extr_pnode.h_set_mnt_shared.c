
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_flags; } ;


 int MNT_PNODE_MASK ;
 int MNT_SHARED ;

__attribute__((used)) static inline void set_mnt_shared(struct vfsmount *mnt)
{
 mnt->mnt_flags &= ~MNT_PNODE_MASK;
 mnt->mnt_flags |= MNT_SHARED;
}
