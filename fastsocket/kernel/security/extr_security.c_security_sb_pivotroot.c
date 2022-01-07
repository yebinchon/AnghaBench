
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {int dummy; } ;
struct TYPE_2__ {int (* sb_pivotroot ) (struct path*,struct path*) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct path*,struct path*) ;

int security_sb_pivotroot(struct path *old_path, struct path *new_path)
{
 return security_ops->sb_pivotroot(old_path, new_path);
}
