
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int mnt_flags; TYPE_1__* mnt_sb; } ;
struct TYPE_2__ {int s_flags; } ;


 int MNT_READONLY ;
 int MS_RDONLY ;

int __mnt_is_readonly(struct vfsmount *mnt)
{
 if (mnt->mnt_flags & MNT_READONLY)
  return 1;
 if (mnt->mnt_sb->s_flags & MS_RDONLY)
  return 1;
 return 0;
}
