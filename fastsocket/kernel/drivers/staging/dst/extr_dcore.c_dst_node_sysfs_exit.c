
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dst_node {TYPE_1__* info; } ;
struct TYPE_2__ {int device; } ;


 int device_unregister (int *) ;
 int dst_remove_node_attributes (struct dst_node*) ;

__attribute__((used)) static void dst_node_sysfs_exit(struct dst_node *n)
{
 if (n->info) {
  dst_remove_node_attributes(n);
  device_unregister(&n->info->device);
  n->info = ((void*)0);
 }
}
