
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2nm_node {int nd_item; } ;


 int config_item_get (int *) ;

void o2nm_node_get(struct o2nm_node *node)
{
 config_item_get(&node->nd_item);
}
