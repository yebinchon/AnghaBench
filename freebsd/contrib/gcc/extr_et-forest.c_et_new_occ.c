
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct et_occ {scalar_t__ min; struct et_occ* min_occ; scalar_t__ depth; int * next; int * prev; int * parent; struct et_node* of; } ;
struct et_node {int dummy; } ;


 scalar_t__ create_alloc_pool (char*,int,int) ;
 scalar_t__ et_occurrences ;
 struct et_occ* pool_alloc (scalar_t__) ;

__attribute__((used)) static struct et_occ *
et_new_occ (struct et_node *node)
{
  struct et_occ *nw;

  if (!et_occurrences)
    et_occurrences = create_alloc_pool ("et_occ pool", sizeof (struct et_occ), 300);
  nw = pool_alloc (et_occurrences);

  nw->of = node;
  nw->parent = ((void*)0);
  nw->prev = ((void*)0);
  nw->next = ((void*)0);

  nw->depth = 0;
  nw->min_occ = nw;
  nw->min = 0;

  return nw;
}
