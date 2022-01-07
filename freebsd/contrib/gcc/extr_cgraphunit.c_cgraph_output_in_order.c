
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cgraph_varpool_node {int order; struct cgraph_varpool_node* next_needed; } ;
struct TYPE_2__ {struct cgraph_asm_node* a; struct cgraph_varpool_node* v; struct cgraph_node* f; } ;
struct cgraph_order_sort {int kind; TYPE_1__ u; } ;
struct cgraph_node {int order; scalar_t__ output; struct cgraph_node* next; } ;
struct cgraph_asm_node {int order; int asm_str; struct cgraph_asm_node* next; } ;






 scalar_t__ alloca (size_t) ;
 int assemble_asm (int ) ;
 struct cgraph_asm_node* cgraph_asm_nodes ;
 int cgraph_expand_function (struct cgraph_node*) ;
 struct cgraph_node* cgraph_nodes ;
 int cgraph_order ;
 int cgraph_varpool_analyze_pending_decls () ;
 int cgraph_varpool_assemble_decl (struct cgraph_varpool_node*) ;
 struct cgraph_varpool_node* cgraph_varpool_nodes_queue ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int memset (struct cgraph_order_sort*,int ,size_t) ;

__attribute__((used)) static void
cgraph_output_in_order (void)
{
  int max;
  size_t size;
  struct cgraph_order_sort *nodes;
  int i;
  struct cgraph_node *pf;
  struct cgraph_varpool_node *pv;
  struct cgraph_asm_node *pa;

  max = cgraph_order;
  size = max * sizeof (struct cgraph_order_sort);
  nodes = (struct cgraph_order_sort *) alloca (size);
  memset (nodes, 0, size);

  cgraph_varpool_analyze_pending_decls ();

  for (pf = cgraph_nodes; pf; pf = pf->next)
    {
      if (pf->output)
 {
   i = pf->order;
   gcc_assert (nodes[i].kind == 129);
   nodes[i].kind = 130;
   nodes[i].u.f = pf;
 }
    }

  for (pv = cgraph_varpool_nodes_queue; pv; pv = pv->next_needed)
    {
      i = pv->order;
      gcc_assert (nodes[i].kind == 129);
      nodes[i].kind = 128;
      nodes[i].u.v = pv;
    }

  for (pa = cgraph_asm_nodes; pa; pa = pa->next)
    {
      i = pa->order;
      gcc_assert (nodes[i].kind == 129);
      nodes[i].kind = 131;
      nodes[i].u.a = pa;
    }

  for (i = 0; i < max; ++i)
    {
      switch (nodes[i].kind)
 {
 case 130:
   nodes[i].u.f->output = 0;
   cgraph_expand_function (nodes[i].u.f);
   break;

 case 128:
   cgraph_varpool_assemble_decl (nodes[i].u.v);
   break;

 case 131:
   assemble_asm (nodes[i].u.a->asm_str);
   break;

 case 129:
   break;

 default:
   gcc_unreachable ();
 }
    }

  cgraph_asm_nodes = ((void*)0);
}
