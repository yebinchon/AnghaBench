
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_node {int dummy; } ;
struct dst_ctl {int dummy; } ;


 int ENODEV ;
 int dst_node_remove_unload (struct dst_node*) ;

__attribute__((used)) static int dst_del_node(struct dst_node *n, struct dst_ctl *ctl,
  void *data, unsigned int size)
{
 if (!n)
  return -ENODEV;

 return dst_node_remove_unload(n);
}
