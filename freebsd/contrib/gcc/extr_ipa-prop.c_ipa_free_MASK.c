#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cgraph_node {struct cgraph_edge* callees; int /*<<< orphan*/ * aux; struct cgraph_node* next; } ;
struct cgraph_edge {scalar_t__ aux; struct cgraph_edge* next_callee; } ;
struct TYPE_4__ {scalar_t__ ipa_param_map; } ;
struct TYPE_3__ {scalar_t__ ipa_mod; scalar_t__ ipa_param_tree; scalar_t__ ipcp_cval; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct cgraph_edge*) ; 
 TYPE_1__* FUNC1 (struct cgraph_node*) ; 
 struct cgraph_node* cgraph_nodes ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void
FUNC3 (void)
{
  struct cgraph_node *node;
  struct cgraph_edge *cs;

  for (node = cgraph_nodes; node; node = node->next)
    {
      if (node->aux == NULL)
	continue;
      if (FUNC1 (node)->ipcp_cval)
	FUNC2 (FUNC1 (node)->ipcp_cval);
      if (FUNC1 (node)->ipa_param_tree)
	FUNC2 (FUNC1 (node)->ipa_param_tree);
      if (FUNC1 (node)->ipa_mod)
	FUNC2 (FUNC1 (node)->ipa_mod);
      for (cs = node->callees; cs; cs = cs->next_callee)
	{
	  if (cs->aux)
	    if (FUNC0 (cs)->ipa_param_map)
	      FUNC2 (FUNC0 (cs)->ipa_param_map);
	}
    }
}