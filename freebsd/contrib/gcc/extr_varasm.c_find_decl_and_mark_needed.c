
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct cgraph_varpool_node {int decl; } ;
struct cgraph_node {int decl; } ;


 scalar_t__ FUNCTION_DECL ;
 int NULL_TREE ;
 scalar_t__ TREE_CODE (int ) ;
 int cgraph_global_info_ready ;
 int cgraph_mark_needed_node (struct cgraph_node*) ;
 struct cgraph_node* cgraph_node_for_asm (int ) ;
 int cgraph_varpool_mark_needed_node (struct cgraph_varpool_node*) ;
 struct cgraph_varpool_node* cgraph_varpool_node_for_asm (int ) ;

__attribute__((used)) static tree
find_decl_and_mark_needed (tree decl, tree target)
{
  struct cgraph_node *fnode = ((void*)0);
  struct cgraph_varpool_node *vnode = ((void*)0);

  if (TREE_CODE (decl) == FUNCTION_DECL)
    {
      fnode = cgraph_node_for_asm (target);
      if (fnode == ((void*)0))
 vnode = cgraph_varpool_node_for_asm (target);
    }
  else
    {
      vnode = cgraph_varpool_node_for_asm (target);
      if (vnode == ((void*)0))
 fnode = cgraph_node_for_asm (target);
    }

  if (fnode)
    {





      if (! cgraph_global_info_ready)
 cgraph_mark_needed_node (fnode);
      return fnode->decl;
    }
  else if (vnode)
    {
      cgraph_varpool_mark_needed_node (vnode);
      return vnode->decl;
    }
  else
    return NULL_TREE;
}
