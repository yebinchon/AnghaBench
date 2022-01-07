
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ inlinable; } ;
struct cgraph_node {TYPE_1__ local; struct cgraph_edge* callees; } ;
struct cgraph_edge {struct cgraph_node* callee; scalar_t__ inline_failed; struct cgraph_edge* next_callee; } ;
typedef int htab_t ;


 int cgraph_mark_inline_edge (struct cgraph_edge*,int) ;
 char* cgraph_node_name (struct cgraph_node*) ;
 int cgraph_recursive_inlining_p (struct cgraph_node*,struct cgraph_node*,scalar_t__*) ;
 scalar_t__ dump_file ;
 int fprintf (scalar_t__,char*,char*) ;
 int htab_find (int ,struct cgraph_node*) ;

__attribute__((used)) static void
cgraph_flatten_node (struct cgraph_node *node, htab_t cycles)
{
  struct cgraph_edge *e;

  for (e = node->callees; e; e = e->next_callee)
    {


      if (e->inline_failed
   && e->callee->local.inlinable
   && !cgraph_recursive_inlining_p (node, e->callee,
          &e->inline_failed)
   && !htab_find (cycles, e->callee))
 {
   if (dump_file)
         fprintf (dump_file, " inlining %s", cgraph_node_name (e->callee));
          cgraph_mark_inline_edge (e, 1);
   cgraph_flatten_node (e->callee, cycles);
 }
      else if (dump_file)
 fprintf (dump_file, " !inlining %s", cgraph_node_name (e->callee));
    }
}
