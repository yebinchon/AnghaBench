
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int dummy; } ;


 struct node* get_node_by_label (struct node*,char const*) ;
 struct node* get_node_by_path (struct node*,char const*) ;
 scalar_t__ streq (char const*,char*) ;

struct node *get_node_by_ref(struct node *tree, const char *ref)
{
 if (streq(ref, "/"))
  return tree;
 else if (ref[0] == '/')
  return get_node_by_path(tree, ref);
 else
  return get_node_by_label(tree, ref);
}
