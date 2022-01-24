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

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 void* all_canon_types ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  compare_type_brand ; 
 void* global_types_exposed_parameter ; 
 void* global_types_full_escape ; 
 void* global_types_seen ; 
 int initialized ; 
 int /*<<< orphan*/  ipa_obstack ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* results_of_malloc ; 
 int /*<<< orphan*/  splay_tree_compare_ints ; 
 int /*<<< orphan*/  splay_tree_compare_pointers ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* type_to_canon_type ; 
 void* uid_to_addressof_down_map ; 
 void* uid_to_addressof_up_map ; 
 void* uid_to_canon_type ; 
 void* uid_to_subtype_map ; 
 int /*<<< orphan*/  visited_nodes ; 

__attribute__((used)) static void 
FUNC4 (void) 
{
  FUNC1 (&ipa_obstack);
  global_types_exposed_parameter = FUNC0 (&ipa_obstack);
  global_types_full_escape = FUNC0 (&ipa_obstack);
  global_types_seen = FUNC0 (&ipa_obstack);
  results_of_malloc = FUNC0 (&ipa_obstack);

  uid_to_canon_type = FUNC3 (splay_tree_compare_ints, 0, 0);
  all_canon_types = FUNC3 (compare_type_brand, 0, 0);
  type_to_canon_type = FUNC3 (splay_tree_compare_pointers, 0, 0);
  uid_to_subtype_map = FUNC3 (splay_tree_compare_ints, 0, 0);
  uid_to_addressof_down_map = FUNC3 (splay_tree_compare_ints, 0, 0);
  uid_to_addressof_up_map = FUNC3 (splay_tree_compare_ints, 0, 0);

  /* There are some shared nodes, in particular the initializers on
     static declarations.  We do not need to scan them more than once
     since all we would be interested in are the addressof
     operations.  */
  visited_nodes = FUNC2 ();
  initialized = true;
}