
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int mnt_flags; } ;
struct timespec {scalar_t__ tv_sec; } ;
struct TYPE_2__ {scalar_t__ tv_sec; } ;
struct inode {TYPE_1__ i_atime; int i_ctime; int i_mtime; } ;


 int MNT_RELATIME ;
 scalar_t__ timespec_compare (int *,TYPE_1__*) ;

__attribute__((used)) static int relatime_need_update(struct vfsmount *mnt, struct inode *inode,
        struct timespec now)
{

 if (!(mnt->mnt_flags & MNT_RELATIME))
  return 1;



 if (timespec_compare(&inode->i_mtime, &inode->i_atime) >= 0)
  return 1;



 if (timespec_compare(&inode->i_ctime, &inode->i_atime) >= 0)
  return 1;





 if ((long)(now.tv_sec - inode->i_atime.tv_sec) >= 24*60*60)
  return 1;



 return 0;
}
