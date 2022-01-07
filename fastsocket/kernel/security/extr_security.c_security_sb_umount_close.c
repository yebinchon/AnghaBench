
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct TYPE_2__ {int (* sb_umount_close ) (struct vfsmount*) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct vfsmount*) ;

void security_sb_umount_close(struct vfsmount *mnt)
{
 security_ops->sb_umount_close(mnt);
}
