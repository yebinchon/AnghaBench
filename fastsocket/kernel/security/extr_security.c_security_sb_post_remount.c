
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct TYPE_2__ {int (* sb_post_remount ) (struct vfsmount*,unsigned long,void*) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct vfsmount*,unsigned long,void*) ;

void security_sb_post_remount(struct vfsmount *mnt, unsigned long flags, void *data)
{
 security_ops->sb_post_remount(mnt, flags, data);
}
