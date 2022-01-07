
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2nm_node {int nd_item; } ;


 int EINVAL ;
 int o2nm_depend_item (int *) ;
 struct o2nm_node* o2nm_get_node_by_num (int ) ;
 int o2nm_node_put (struct o2nm_node*) ;
 int o2nm_this_node () ;

int o2nm_depend_this_node(void)
{
 int ret = 0;
 struct o2nm_node *local_node;

 local_node = o2nm_get_node_by_num(o2nm_this_node());
 if (!local_node) {
  ret = -EINVAL;
  goto out;
 }

 ret = o2nm_depend_item(&local_node->nd_item);
 o2nm_node_put(local_node);

out:
 return ret;
}
