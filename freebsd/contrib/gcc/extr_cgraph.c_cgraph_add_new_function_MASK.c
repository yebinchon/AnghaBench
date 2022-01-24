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
typedef  int /*<<< orphan*/  tree ;
struct cgraph_node {struct cgraph_node* next_needed; } ;

/* Variables and functions */
 struct cgraph_node* cgraph_expand_queue ; 
 struct cgraph_node* FUNC0 (int /*<<< orphan*/ ) ; 

void
FUNC1 (tree fndecl)
{
  struct cgraph_node *n = FUNC0 (fndecl);
  n->next_needed = cgraph_expand_queue;
  cgraph_expand_queue = n;
}