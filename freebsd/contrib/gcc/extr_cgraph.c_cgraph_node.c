
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* tree ;
struct cgraph_node {struct cgraph_node* master_clone; struct cgraph_node* nested; struct cgraph_node* origin; struct cgraph_node* next_nested; void* decl; } ;


 void* DECL_CONTEXT (void*) ;
 scalar_t__ FUNCTION_DECL ;
 int INSERT ;
 scalar_t__ TREE_CODE (void*) ;
 struct cgraph_node* cgraph_create_node () ;
 scalar_t__ cgraph_hash ;
 int eq_node ;
 int gcc_assert (int) ;
 int hash_node ;
 scalar_t__ htab_create_ggc (int,int ,int ,int *) ;
 scalar_t__ htab_find_slot (scalar_t__,struct cgraph_node*,int ) ;

struct cgraph_node *
cgraph_node (tree decl)
{
  struct cgraph_node key, *node, **slot;

  gcc_assert (TREE_CODE (decl) == FUNCTION_DECL);

  if (!cgraph_hash)
    cgraph_hash = htab_create_ggc (10, hash_node, eq_node, ((void*)0));

  key.decl = decl;

  slot = (struct cgraph_node **) htab_find_slot (cgraph_hash, &key, INSERT);

  if (*slot)
    {
      node = *slot;
      if (!node->master_clone)
 node->master_clone = node;
      return node;
    }

  node = cgraph_create_node ();
  node->decl = decl;
  *slot = node;
  if (DECL_CONTEXT (decl) && TREE_CODE (DECL_CONTEXT (decl)) == FUNCTION_DECL)
    {
      node->origin = cgraph_node (DECL_CONTEXT (decl));
      node->next_nested = node->origin->nested;
      node->origin->nested = node;
      node->master_clone = node;
    }
  return node;
}
