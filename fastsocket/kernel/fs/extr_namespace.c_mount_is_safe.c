
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct path {TYPE_1__* dentry; } ;
struct TYPE_4__ {int i_mode; scalar_t__ i_uid; } ;
struct TYPE_3__ {TYPE_2__* d_inode; } ;


 int CAP_SYS_ADMIN ;
 int EPERM ;
 int MAY_WRITE ;
 scalar_t__ S_ISLNK (int) ;
 int S_ISVTX ;
 scalar_t__ capable (int ) ;
 scalar_t__ current_uid () ;
 scalar_t__ inode_permission (TYPE_2__*,int ) ;

__attribute__((used)) static int mount_is_safe(struct path *path)
{
 if (capable(CAP_SYS_ADMIN))
  return 0;
 return -EPERM;
}
