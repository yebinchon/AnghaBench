
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct cgraph_node {int decl; struct cgraph_node* next; } ;


 struct cgraph_node* cgraph_nodes ;
 scalar_t__ decl_assembler_name_equal (int ,int ) ;

struct cgraph_node *
cgraph_node_for_asm (tree asmname)
{
  struct cgraph_node *node;

  for (node = cgraph_nodes; node ; node = node->next)
    if (decl_assembler_name_equal (node->decl, asmname))
      return node;

  return ((void*)0);
}
