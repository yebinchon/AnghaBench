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
struct cgraph_node {struct cgraph_node* next; } ;
typedef  int /*<<< orphan*/ * ipa_methodlist_p ;

/* Variables and functions */
 struct cgraph_node* cgraph_nodes ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,struct cgraph_node*) ; 

ipa_methodlist_p
FUNC1 (void)
{
  struct cgraph_node *node;
  ipa_methodlist_p wl;

  wl = NULL;
  for (node = cgraph_nodes; node; node = node->next)
    FUNC0 (&wl, node);

  return wl;
}