
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct path {int dummy; } ;
struct TYPE_2__ {int (* sb_post_addmount ) (struct vfsmount*,struct path*) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct vfsmount*,struct path*) ;

void security_sb_post_addmount(struct vfsmount *mnt, struct path *mountpoint)
{
 security_ops->sb_post_addmount(mnt, mountpoint);
}
