
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct finally_tree_node {int parent; int child; } ;


 int finally_tree ;
 scalar_t__ htab_find (int ,struct finally_tree_node*) ;

__attribute__((used)) static bool
outside_finally_tree (tree start, tree target)
{
  struct finally_tree_node n, *p;

  do
    {
      n.child = start;
      p = (struct finally_tree_node *) htab_find (finally_tree, &n);
      if (!p)
 return 1;
      start = p->parent;
    }
  while (start != target);

  return 0;
}
