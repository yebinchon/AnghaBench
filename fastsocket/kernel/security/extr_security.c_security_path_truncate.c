
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct path {TYPE_1__* dentry; } ;
typedef int loff_t ;
struct TYPE_4__ {int (* path_truncate ) (struct path*,int ,unsigned int) ;} ;
struct TYPE_3__ {int d_inode; } ;


 int IS_PRIVATE (int ) ;
 TYPE_2__* security_ops ;
 int stub1 (struct path*,int ,unsigned int) ;
 scalar_t__ unlikely (int ) ;

int security_path_truncate(struct path *path, loff_t length,
      unsigned int time_attrs)
{
 if (unlikely(IS_PRIVATE(path->dentry->d_inode)))
  return 0;
 return security_ops->path_truncate(path, length, time_attrs);
}
