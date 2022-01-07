
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {int dummy; } ;
struct TYPE_2__ {int (* sb_mount ) (char*,struct path*,char*,unsigned long,void*) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (char*,struct path*,char*,unsigned long,void*) ;

int security_sb_mount(char *dev_name, struct path *path,
                       char *type, unsigned long flags, void *data)
{
 return security_ops->sb_mount(dev_name, path, type, flags, data);
}
