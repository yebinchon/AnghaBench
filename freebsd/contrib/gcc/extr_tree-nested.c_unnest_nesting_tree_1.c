
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nesting_info {int context; } ;
struct cgraph_node {scalar_t__ origin; } ;


 int cgraph_finalize_function (int ,int) ;
 struct cgraph_node* cgraph_node (int ) ;
 int cgraph_unnest_node (struct cgraph_node*) ;

__attribute__((used)) static void
unnest_nesting_tree_1 (struct nesting_info *root)
{
  struct cgraph_node *node = cgraph_node (root->context);



  if (node->origin)
    {
       cgraph_unnest_node (cgraph_node (root->context));
       cgraph_finalize_function (root->context, 1);
    }
}
