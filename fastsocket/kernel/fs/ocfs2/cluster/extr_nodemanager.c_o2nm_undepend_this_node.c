
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2nm_node {int nd_item; } ;


 int BUG_ON (int) ;
 struct o2nm_node* o2nm_get_node_by_num (int ) ;
 int o2nm_node_put (struct o2nm_node*) ;
 int o2nm_this_node () ;
 int o2nm_undepend_item (int *) ;

void o2nm_undepend_this_node(void)
{
 struct o2nm_node *local_node;

 local_node = o2nm_get_node_by_num(o2nm_this_node());
 BUG_ON(!local_node);

 o2nm_undepend_item(&local_node->nd_item);
 o2nm_node_put(local_node);
}
