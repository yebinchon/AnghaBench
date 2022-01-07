
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dst_node {TYPE_1__* info; } ;
struct TYPE_2__ {int device; } ;


 int ARRAY_SIZE (int *) ;
 int device_create_file (int *,int *) ;
 int device_remove_file (int *,int *) ;
 int * dst_node_attrs ;

__attribute__((used)) static int dst_create_node_attributes(struct dst_node *n)
{
 int err, i;

 for (i=0; i<ARRAY_SIZE(dst_node_attrs); ++i) {
  err = device_create_file(&n->info->device,
    &dst_node_attrs[i]);
  if (err)
   goto err_out_remove_all;
 }
 return 0;

err_out_remove_all:
 while (--i >= 0)
  device_remove_file(&n->info->device,
    &dst_node_attrs[i]);

 return err;
}
