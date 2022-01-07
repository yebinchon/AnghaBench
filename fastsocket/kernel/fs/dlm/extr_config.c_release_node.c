
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_node {int dummy; } ;
struct config_item {int dummy; } ;


 struct dlm_node* config_item_to_node (struct config_item*) ;
 int kfree (struct dlm_node*) ;

__attribute__((used)) static void release_node(struct config_item *i)
{
 struct dlm_node *nd = config_item_to_node(i);
 kfree(nd);
}
