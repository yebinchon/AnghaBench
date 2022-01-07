
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct et_node {struct et_node* parent_occ; struct et_node* rightmost_occ; } ;


 int et_nodes ;
 int et_occurrences ;
 int pool_free (int ,struct et_node*) ;

void
et_free_tree_force (struct et_node *t)
{
  pool_free (et_occurrences, t->rightmost_occ);
  if (t->parent_occ)
    pool_free (et_occurrences, t->parent_occ);
  pool_free (et_nodes, t);
}
