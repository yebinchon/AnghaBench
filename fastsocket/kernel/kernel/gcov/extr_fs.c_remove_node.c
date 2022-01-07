
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_node {struct gcov_node* parent; int children; } ;


 scalar_t__ list_empty (int *) ;
 int release_node (struct gcov_node*) ;
 struct gcov_node root_node ;

__attribute__((used)) static void remove_node(struct gcov_node *node)
{
 struct gcov_node *parent;

 while ((node != &root_node) && list_empty(&node->children)) {
  parent = node->parent;
  release_node(node);
  node = parent;
 }
}
