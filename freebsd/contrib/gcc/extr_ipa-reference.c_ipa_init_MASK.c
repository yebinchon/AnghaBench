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
struct cgraph_node {int /*<<< orphan*/  decl; struct cgraph_node* next; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 void* all_module_statics ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 struct cgraph_node* cgraph_nodes ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipa_obstack ; 
 int /*<<< orphan*/  memory_identifier_string ; 
 void* module_statics_escape ; 
 void* module_statics_written ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  reference_vars_to_consider ; 
 int /*<<< orphan*/  splay_tree_compare_ints ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  visited_nodes ; 

__attribute__((used)) static void 
FUNC6 (void) 
{
  struct cgraph_node *node;
  memory_identifier_string = FUNC2(7, "memory");

  reference_vars_to_consider =
    FUNC5 (splay_tree_compare_ints);

  FUNC1 (&ipa_obstack);
  module_statics_escape = FUNC0 (&ipa_obstack);
  module_statics_written = FUNC0 (&ipa_obstack);
  all_module_statics = FUNC0 (&ipa_obstack);

  /* This will add NODE->DECL to the splay trees.  */
  for (node = cgraph_nodes; node; node = node->next)
    FUNC3 (node->decl);

  /* There are some shared nodes, in particular the initializers on
     static declarations.  We do not need to scan them more than once
     since all we would be interested in are the addressof
     operations.  */
  visited_nodes = FUNC4 ();
}