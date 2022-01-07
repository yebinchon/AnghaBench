
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iucv_path_resumed {size_t ippathid; int ipuser; } ;
struct iucv_path {TYPE_1__* handler; } ;
struct iucv_irq_data {int dummy; } ;
struct TYPE_2__ {int (* path_resumed ) (struct iucv_path*,int ) ;} ;


 struct iucv_path** iucv_path_table ;
 int stub1 (struct iucv_path*,int ) ;

__attribute__((used)) static void iucv_path_resumed(struct iucv_irq_data *data)
{
 struct iucv_path_resumed *ipr = (void *) data;
 struct iucv_path *path = iucv_path_table[ipr->ippathid];

 if (path && path->handler && path->handler->path_resumed)
  path->handler->path_resumed(path, ipr->ipuser);
}
