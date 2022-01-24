#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cgraph_varpool_node {int order; struct cgraph_varpool_node* next_needed; } ;
struct TYPE_2__ {struct cgraph_asm_node* a; struct cgraph_varpool_node* v; struct cgraph_node* f; } ;
struct cgraph_order_sort {int kind; TYPE_1__ u; } ;
struct cgraph_node {int order; scalar_t__ output; struct cgraph_node* next; } ;
struct cgraph_asm_node {int order; int /*<<< orphan*/  asm_str; struct cgraph_asm_node* next; } ;

/* Variables and functions */
#define  ORDER_ASM 131 
#define  ORDER_FUNCTION 130 
#define  ORDER_UNDEFINED 129 
#define  ORDER_VAR 128 
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct cgraph_asm_node* cgraph_asm_nodes ; 
 int /*<<< orphan*/  FUNC2 (struct cgraph_node*) ; 
 struct cgraph_node* cgraph_nodes ; 
 int cgraph_order ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct cgraph_varpool_node*) ; 
 struct cgraph_varpool_node* cgraph_varpool_nodes_queue ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct cgraph_order_sort*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void
FUNC8 (void)
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
  nodes = (struct cgraph_order_sort *) FUNC0 (size);
  FUNC7 (nodes, 0, size);

  FUNC3 ();

  for (pf = cgraph_nodes; pf; pf = pf->next)
    {
      if (pf->output)
	{
	  i = pf->order;
	  FUNC5 (nodes[i].kind == ORDER_UNDEFINED);
	  nodes[i].kind = ORDER_FUNCTION;
	  nodes[i].u.f = pf;
	}
    }

  for (pv = cgraph_varpool_nodes_queue; pv; pv = pv->next_needed)
    {
      i = pv->order;
      FUNC5 (nodes[i].kind == ORDER_UNDEFINED);
      nodes[i].kind = ORDER_VAR;
      nodes[i].u.v = pv;
    }

  for (pa = cgraph_asm_nodes; pa; pa = pa->next)
    {
      i = pa->order;
      FUNC5 (nodes[i].kind == ORDER_UNDEFINED);
      nodes[i].kind = ORDER_ASM;
      nodes[i].u.a = pa;
    }

  for (i = 0; i < max; ++i)
    {
      switch (nodes[i].kind)
	{
	case ORDER_FUNCTION:
	  nodes[i].u.f->output = 0;
	  FUNC2 (nodes[i].u.f);
	  break;

	case ORDER_VAR:
	  FUNC4 (nodes[i].u.v);
	  break;

	case ORDER_ASM:
	  FUNC1 (nodes[i].u.a->asm_str);
	  break;

	case ORDER_UNDEFINED:
	  break;

	default:
	  FUNC6 ();
	}
    }

  cgraph_asm_nodes = NULL;
}