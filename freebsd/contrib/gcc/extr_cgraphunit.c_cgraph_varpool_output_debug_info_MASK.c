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
struct cgraph_varpool_node {struct cgraph_varpool_node* next_needed; int /*<<< orphan*/  decl; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* global_decl ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ BLOCK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  TV_SYMOUT ; 
 struct cgraph_varpool_node* cgraph_varpool_assembled_nodes_queue ; 
 TYPE_1__* debug_hooks ; 
 scalar_t__ errorcount ; 
 scalar_t__ sorrycount ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (void)
{
  FUNC4 (TV_SYMOUT);
  if (errorcount == 0 && sorrycount == 0)
    while (cgraph_varpool_assembled_nodes_queue)
      {
	struct cgraph_varpool_node *node = cgraph_varpool_assembled_nodes_queue;

	/* Local static variables are never seen by check_global_declarations
	   so we need to output debug info by hand.  */
	if (FUNC0 (node->decl)
	    && (FUNC1 (FUNC0 (node->decl)) == BLOCK
		|| FUNC1 (FUNC0 (node->decl)) == FUNCTION_DECL)
	    && errorcount == 0 && sorrycount == 0)
	     (*debug_hooks->global_decl) (node->decl);
	cgraph_varpool_assembled_nodes_queue = node->next_needed;
	node->next_needed = 0;
      }
  FUNC3 (TV_SYMOUT);
}