
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iucv_path_complete {size_t ippathid; int ipuser; int ipflags1; } ;
struct iucv_path {TYPE_1__* handler; int flags; } ;
struct iucv_irq_data {int dummy; } ;
struct TYPE_2__ {int (* path_complete ) (struct iucv_path*,int ) ;} ;


 struct iucv_path** iucv_path_table ;
 int stub1 (struct iucv_path*,int ) ;

__attribute__((used)) static void iucv_path_complete(struct iucv_irq_data *data)
{
 struct iucv_path_complete *ipc = (void *) data;
 struct iucv_path *path = iucv_path_table[ipc->ippathid];

 if (path)
  path->flags = ipc->ipflags1;
 if (path && path->handler && path->handler->path_complete)
  path->handler->path_complete(path, ipc->ipuser);
}
