
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct et_node {struct et_node* rightmost_occ; scalar_t__ father; struct et_node* son; } ;


 int et_nodes ;
 int et_occurrences ;
 int et_split (struct et_node*) ;
 int pool_free (int ,struct et_node*) ;

void
et_free_tree (struct et_node *t)
{
  while (t->son)
    et_split (t->son);

  if (t->father)
    et_split (t);

  pool_free (et_occurrences, t->rightmost_occ);
  pool_free (et_nodes, t);
}
