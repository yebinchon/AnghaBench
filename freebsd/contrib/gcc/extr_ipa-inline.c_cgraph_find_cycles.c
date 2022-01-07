
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgraph_node {struct cgraph_node* aux; struct cgraph_edge* callees; } ;
struct cgraph_edge {struct cgraph_node* callee; struct cgraph_edge* next_callee; } ;
typedef int htab_t ;


 int INSERT ;
 char* cgraph_node_name (struct cgraph_node*) ;
 scalar_t__ dump_file ;
 int fprintf (scalar_t__,char*,char*) ;
 void** htab_find_slot (int ,struct cgraph_node*,int ) ;

__attribute__((used)) static void
cgraph_find_cycles (struct cgraph_node *node, htab_t cycles)
{
  struct cgraph_edge *e;

  if (node->aux)
    {
      void **slot;
      slot = htab_find_slot (cycles, node, INSERT);
      if (!*slot)
 {
   if (dump_file)
     fprintf (dump_file, "Cycle contains %s\n", cgraph_node_name (node));
   *slot = node;
 }
      return;
    }

  node->aux = node;
  for (e = node->callees; e; e = e->next_callee)
    cgraph_find_cycles (e->callee, cycles);
  node->aux = 0;
}
