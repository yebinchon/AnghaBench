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
typedef  int /*<<< orphan*/  walk_data ;
struct dom_walk_data {int /*<<< orphan*/  after_dom_children_after_stmts; int /*<<< orphan*/  before_dom_children_after_stmts; int /*<<< orphan*/  before_dom_children_walk_stmts; int /*<<< orphan*/  before_dom_children_before_stmts; int /*<<< orphan*/  interesting_blocks; int /*<<< orphan*/  dom_direction; } ;
typedef  int /*<<< orphan*/  sbitmap ;
typedef  enum rewrite_mode { ____Placeholder_rewrite_mode } rewrite_mode ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 int /*<<< orphan*/  CDI_DOMINATORS ; 
 int REWRITE_ALL ; 
 int REWRITE_UPDATE ; 
 int TDF_STATS ; 
 int /*<<< orphan*/  TV_TREE_SSA_REWRITE_BLOCKS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  block_defs_stack ; 
 int /*<<< orphan*/ * def_blocks ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct dom_walk_data*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  heap ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct dom_walk_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct dom_walk_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rewrite_add_phi_arguments ; 
 int /*<<< orphan*/  rewrite_finalize_block ; 
 int /*<<< orphan*/  rewrite_initialize_block ; 
 int /*<<< orphan*/  rewrite_stmt ; 
 int /*<<< orphan*/  rewrite_update_fini_block ; 
 int /*<<< orphan*/  rewrite_update_init_block ; 
 int /*<<< orphan*/  rewrite_update_phi_arguments ; 
 int /*<<< orphan*/  rewrite_update_stmt ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tree ; 
 int /*<<< orphan*/  FUNC11 (struct dom_walk_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12 (basic_block entry, enum rewrite_mode what, sbitmap blocks)
{
  struct dom_walk_data walk_data;
  
  /* Rewrite all the basic blocks in the program.  */
  FUNC10 (TV_TREE_SSA_REWRITE_BLOCKS);

  /* Setup callbacks for the generic dominator tree walker.  */
  FUNC8 (&walk_data, 0, sizeof (walk_data));

  walk_data.dom_direction = CDI_DOMINATORS;
  walk_data.interesting_blocks = blocks;

  if (what == REWRITE_UPDATE)
    walk_data.before_dom_children_before_stmts = rewrite_update_init_block;
  else
    walk_data.before_dom_children_before_stmts = rewrite_initialize_block;

  if (what == REWRITE_ALL)
    walk_data.before_dom_children_walk_stmts = rewrite_stmt;
  else if (what == REWRITE_UPDATE)
    walk_data.before_dom_children_walk_stmts = rewrite_update_stmt;
  else
    FUNC5 ();

  if (what == REWRITE_ALL)
    walk_data.before_dom_children_after_stmts = rewrite_add_phi_arguments;
  else if (what == REWRITE_UPDATE)
    walk_data.before_dom_children_after_stmts = rewrite_update_phi_arguments;
  else
    FUNC5 ();
  
  if (what == REWRITE_ALL)
    walk_data.after_dom_children_after_stmts =  rewrite_finalize_block;
  else if (what == REWRITE_UPDATE)
    walk_data.after_dom_children_after_stmts = rewrite_update_fini_block;
  else
    FUNC5 ();

  block_defs_stack = FUNC0 (tree, heap, 10);

  /* Initialize the dominator walker.  */
  FUNC7 (&walk_data);

  /* Recursively walk the dominator tree rewriting each statement in
     each basic block.  */
  FUNC11 (&walk_data, entry);

  /* Finalize the dominator walker.  */
  FUNC4 (&walk_data);

  /* Debugging dumps.  */
  if (dump_file && (dump_flags & TDF_STATS))
    {
      FUNC2 (dump_file);
      if (def_blocks)
	FUNC3 (dump_file);
    }

  if (def_blocks)
    {
      FUNC6 (def_blocks);
      def_blocks = NULL;
    }
  
  FUNC1 (tree, heap, block_defs_stack);

  FUNC9 (TV_TREE_SSA_REWRITE_BLOCKS);
}