
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct cgraph_varpool_node {int externally_visible; scalar_t__ finalized; int decl; struct cgraph_varpool_node* next; } ;
struct TYPE_2__ {int externally_visible; scalar_t__ finalized; } ;
struct cgraph_node {TYPE_1__ local; int decl; struct cgraph_node* next; } ;


 int DECL_ATTRIBUTES (int ) ;
 int OPT_Wattributes ;
 int TREE_PUBLIC (int ) ;
 int cgraph_mark_needed_node (struct cgraph_node*) ;
 struct cgraph_node* cgraph_nodes ;
 int cgraph_varpool_mark_needed_node (struct cgraph_varpool_node*) ;
 struct cgraph_varpool_node* cgraph_varpool_nodes ;
 scalar_t__ lookup_attribute (char*,int ) ;
 int mark_decl_referenced (int ) ;
 int warning (int ,char*,int ) ;

__attribute__((used)) static void
process_function_and_variable_attributes (struct cgraph_node *first,
                                          struct cgraph_varpool_node *first_var)
{
  struct cgraph_node *node;
  struct cgraph_varpool_node *vnode;

  for (node = cgraph_nodes; node != first; node = node->next)
    {
      tree decl = node->decl;
      if (lookup_attribute ("used", DECL_ATTRIBUTES (decl)))
 {
   mark_decl_referenced (decl);
   if (node->local.finalized)
      cgraph_mark_needed_node (node);
 }
      if (lookup_attribute ("externally_visible", DECL_ATTRIBUTES (decl)))
 {
   if (! TREE_PUBLIC (node->decl))
     warning (OPT_Wattributes,
       "%J%<externally_visible%> attribute have effect only on public objects",
       node->decl);
   else
     {
       if (node->local.finalized)
  cgraph_mark_needed_node (node);
       node->local.externally_visible = 1;
     }
 }
    }
  for (vnode = cgraph_varpool_nodes; vnode != first_var; vnode = vnode->next)
    {
      tree decl = vnode->decl;
      if (lookup_attribute ("used", DECL_ATTRIBUTES (decl)))
 {
   mark_decl_referenced (decl);
   if (vnode->finalized)
     cgraph_varpool_mark_needed_node (vnode);
 }
      if (lookup_attribute ("externally_visible", DECL_ATTRIBUTES (decl)))
 {
   if (! TREE_PUBLIC (vnode->decl))
     warning (OPT_Wattributes,
       "%J%<externally_visible%> attribute have effect only on public objects",
       vnode->decl);
   else
     {
       if (vnode->finalized)
  cgraph_varpool_mark_needed_node (vnode);
       vnode->externally_visible = 1;
     }
 }
    }
}
