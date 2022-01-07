
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct cgraph_local_info {int dummy; } ;
struct cgraph_node {struct cgraph_local_info local; } ;


 scalar_t__ FUNCTION_DECL ;
 scalar_t__ TREE_CODE (int ) ;
 struct cgraph_node* cgraph_node (int ) ;
 int gcc_assert (int) ;

struct cgraph_local_info *
cgraph_local_info (tree decl)
{
  struct cgraph_node *node;

  gcc_assert (TREE_CODE (decl) == FUNCTION_DECL);
  node = cgraph_node (decl);
  return &node->local;
}
