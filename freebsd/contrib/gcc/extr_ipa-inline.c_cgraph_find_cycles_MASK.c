#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct cgraph_node {struct cgraph_node* aux; struct cgraph_edge* callees; } ;
struct cgraph_edge {struct cgraph_node* callee; struct cgraph_edge* next_callee; } ;
typedef  int /*<<< orphan*/  htab_t ;

/* Variables and functions */
 int /*<<< orphan*/  INSERT ; 
 char* FUNC0 (struct cgraph_node*) ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,char*) ; 
 void** FUNC2 (int /*<<< orphan*/ ,struct cgraph_node*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (struct cgraph_node *node, htab_t cycles)
{
  struct cgraph_edge *e;

  if (node->aux)
    {
      void **slot;
      slot = FUNC2 (cycles, node, INSERT);
      if (!*slot)
	{
	  if (dump_file)
	    FUNC1 (dump_file, "Cycle contains %s\n", FUNC0 (node));
	  *slot = node;
	}
      return;
    }

  node->aux = node;
  for (e = node->callees; e; e = e->next_callee)
    FUNC3 (e->callee, cycles); 
  node->aux = 0;
}