
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dst_node {TYPE_1__* info; } ;
struct TYPE_2__ {int device; } ;


 int ARRAY_SIZE (int *) ;
 int device_remove_file (int *,int *) ;
 int * dst_node_attrs ;

__attribute__((used)) static void dst_remove_node_attributes(struct dst_node *n)
{
 int i;

 for (i=0; i<ARRAY_SIZE(dst_node_attrs); ++i)
  device_remove_file(&n->info->device,
    &dst_node_attrs[i]);
}
