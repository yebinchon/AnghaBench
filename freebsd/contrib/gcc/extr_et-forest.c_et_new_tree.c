
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct et_node {int * parent_occ; int rightmost_occ; int * son; int * right; int * left; int * father; void* data; } ;


 scalar_t__ create_alloc_pool (char*,int,int) ;
 int et_new_occ (struct et_node*) ;
 scalar_t__ et_nodes ;
 struct et_node* pool_alloc (scalar_t__) ;

struct et_node *
et_new_tree (void *data)
{
  struct et_node *nw;

  if (!et_nodes)
    et_nodes = create_alloc_pool ("et_node pool", sizeof (struct et_node), 300);
  nw = pool_alloc (et_nodes);

  nw->data = data;
  nw->father = ((void*)0);
  nw->left = ((void*)0);
  nw->right = ((void*)0);
  nw->son = ((void*)0);

  nw->rightmost_occ = et_new_occ (nw);
  nw->parent_occ = ((void*)0);

  return nw;
}
