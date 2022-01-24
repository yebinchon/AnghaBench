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
 int PROP_cfg ; 
 int PROP_ssa ; 
 int PROP_trees ; 
 int TDF_BLOCKS ; 
 int TDF_GRAPH ; 
 int TDF_SLIM ; 
 unsigned int TODO_cleanup_cfg ; 
 unsigned int TODO_dump_cgraph ; 
 unsigned int TODO_dump_func ; 
 unsigned int TODO_ggc_collect ; 
 unsigned int TODO_remove_unused_locals ; 
 unsigned int TODO_update_smt_usage ; 
 unsigned int TODO_update_ssa ; 
 unsigned int TODO_update_ssa_any ; 
 unsigned int TODO_verify_all ; 
 unsigned int TODO_verify_flow ; 
 unsigned int TODO_verify_loops ; 
 unsigned int TODO_verify_ssa ; 
 unsigned int TODO_verify_stmts ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int curr_properties ; 
 scalar_t__ current_function_decl ; 
 scalar_t__ current_loops ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  dump_file_name ; 
 int dump_flags ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ graph_dump_format ; 
 unsigned int last_verified ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ no_graph ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (unsigned int) ; 
 int updating_used_alone ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 () ; 

__attribute__((used)) static void
FUNC20 (unsigned int flags)
{
#if defined ENABLE_CHECKING
  if (need_ssa_update_p ())
    gcc_assert (flags & TODO_update_ssa_any);
#endif

  if (curr_properties & PROP_ssa)
    flags |= TODO_verify_ssa;
  flags &= ~last_verified;
  if (!flags)
    return;
  
  /* Always recalculate SMT usage before doing anything else.  */
  if (flags & TODO_update_smt_usage)
    FUNC13 ();

  /* Always cleanup the CFG before trying to update SSA .  */
  if (flags & TODO_cleanup_cfg)
    {
      /* CFG Cleanup can cause a constant to prop into an ARRAY_REF.  */
      updating_used_alone = true;

      if (current_loops)
	FUNC1 ();
      else
	FUNC0 ();

      /* Update the used alone after cleanup cfg.  */
      FUNC13 ();

      /* When cleanup_tree_cfg merges consecutive blocks, it may
	 perform some simplistic propagation when removing single
	 valued PHI nodes.  This propagation may, in turn, cause the
	 SSA form to become out-of-date (see PR 22037).  So, even
	 if the parent pass had not scheduled an SSA update, we may
	 still need to do one.  */
      if (!(flags & TODO_update_ssa_any) && FUNC8 ())
	flags |= TODO_update_ssa;
    }

  if (flags & TODO_update_ssa_any)
    {
      unsigned update_flags = flags & TODO_update_ssa_any;
      FUNC15 (update_flags);
      last_verified &= ~TODO_verify_ssa;
    }

  if (flags & TODO_remove_unused_locals)
    FUNC14 ();

  if ((flags & TODO_dump_func)
      && dump_file && current_function_decl)
    {
      if (curr_properties & PROP_trees)
        FUNC3 (current_function_decl,
                               dump_file, dump_flags);
      else
	{
	  if (dump_flags & TDF_SLIM)
	    FUNC11 (dump_file, FUNC6 (), dump_flags);
	  else if ((curr_properties & PROP_cfg) && (dump_flags & TDF_BLOCKS))
	    FUNC12 (dump_file, FUNC6 ());
          else
	    FUNC9 (dump_file, FUNC6 ());

	  if (curr_properties & PROP_cfg
	      && graph_dump_format != no_graph
	      && (dump_flags & TDF_GRAPH))
	    FUNC10 (dump_file_name, FUNC6 ());
	}

      /* Flush the file.  If verification fails, we won't be able to
	 close the file before aborting.  */
      FUNC4 (dump_file);
    }
  if ((flags & TODO_dump_cgraph)
      && dump_file && !current_function_decl)
    {
      FUNC2 (dump_file);
      /* Flush the file.  If verification fails, we won't be able to
	 close the file before aborting.  */
      FUNC4 (dump_file);
    }

  if (flags & TODO_ggc_collect)
    {
      FUNC7 ();
    }

#if defined ENABLE_CHECKING
  if (flags & TODO_verify_ssa)
    verify_ssa (true);
  if (flags & TODO_verify_flow)
    verify_flow_info ();
  if (flags & TODO_verify_stmts)
    verify_stmts ();
  if (flags & TODO_verify_loops)
    verify_loop_closed_ssa ();
#endif

  last_verified = flags & TODO_verify_all;
}