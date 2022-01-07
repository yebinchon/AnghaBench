
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct path {int dummy; } ;
struct TYPE_2__ {int (* sb_check_sb ) (struct vfsmount*,struct path*) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct vfsmount*,struct path*) ;

int security_sb_check_sb(struct vfsmount *mnt, struct path *path)
{
 return security_ops->sb_check_sb(mnt, path);
}
