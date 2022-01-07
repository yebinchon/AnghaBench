
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgraph_varpool_node {struct cgraph_varpool_node* next_needed; } ;
typedef int FILE ;


 struct cgraph_varpool_node* cgraph_varpool_nodes ;
 int dump_cgraph_varpool_node (int *,struct cgraph_varpool_node*) ;
 int fprintf (int *,char*) ;

void
dump_varpool (FILE *f)
{
  struct cgraph_varpool_node *node;

  fprintf (f, "variable pool:\n\n");
  for (node = cgraph_varpool_nodes; node; node = node->next_needed)
    dump_cgraph_varpool_node (f, node);
}
