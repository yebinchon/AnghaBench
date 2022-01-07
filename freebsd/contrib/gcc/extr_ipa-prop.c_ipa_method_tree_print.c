
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct cgraph_node {struct cgraph_node* next; } ;
struct TYPE_2__ {char* (* decl_printable_name ) (int ,int) ;} ;
typedef int FILE ;


 scalar_t__ PARM_DECL ;
 scalar_t__ TREE_CODE (int ) ;
 char* cgraph_node_name (struct cgraph_node*) ;
 struct cgraph_node* cgraph_nodes ;
 int fprintf (int *,char*,...) ;
 int ipa_method_formal_count (struct cgraph_node*) ;
 int ipa_method_get_tree (struct cgraph_node*,int) ;
 TYPE_1__ lang_hooks ;
 char* stub1 (int ,int) ;
 char* stub2 (int ,int) ;

void
ipa_method_tree_print (FILE * f)
{
  int i, count;
  tree temp;
  struct cgraph_node *node;

  fprintf (f, "\nPARAM TREE MAP PRINT\n");
  for (node = cgraph_nodes; node; node = node->next)
    {
      fprintf (f, "method  %s Trees :: \n", cgraph_node_name (node));
      count = ipa_method_formal_count (node);
      for (i = 0; i < count; i++)
 {
   temp = ipa_method_get_tree (node, i);
   if (TREE_CODE (temp) == PARM_DECL)
     fprintf (f, "  param [%d] : %s\n", i,
       (*lang_hooks.decl_printable_name) (temp, 2));
 }

    }
}
