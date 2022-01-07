
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct cgraph_rtl_info {int dummy; } ;
struct cgraph_node {struct cgraph_rtl_info rtl; int decl; } ;


 scalar_t__ FUNCTION_DECL ;
 int TREE_ASM_WRITTEN (int ) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 struct cgraph_node* cgraph_node (scalar_t__) ;
 scalar_t__ current_function_decl ;
 int gcc_assert (int) ;

struct cgraph_rtl_info *
cgraph_rtl_info (tree decl)
{
  struct cgraph_node *node;

  gcc_assert (TREE_CODE (decl) == FUNCTION_DECL);
  node = cgraph_node (decl);
  if (decl != current_function_decl
      && !TREE_ASM_WRITTEN (node->decl))
    return ((void*)0);
  return &node->rtl;
}
