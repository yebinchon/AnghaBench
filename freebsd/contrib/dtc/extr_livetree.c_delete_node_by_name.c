
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {struct node* next_sibling; int name; struct node* children; } ;


 int delete_node (struct node*) ;
 scalar_t__ streq (int ,char*) ;

void delete_node_by_name(struct node *parent, char *name)
{
 struct node *node = parent->children;

 while (node) {
  if (streq(node->name, name)) {
   delete_node(node);
   return;
  }
  node = node->next_sibling;
 }
}
