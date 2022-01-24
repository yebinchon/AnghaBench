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
struct loops {int dummy; } ;
struct loop {scalar_t__ single_exit; int /*<<< orphan*/  outer; } ;
typedef  scalar_t__ edge ;
typedef  int /*<<< orphan*/  bitmap ;
typedef  int /*<<< orphan*/  basic_block ;
typedef  scalar_t__ LOC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EQ_EXPR ; 
 int /*<<< orphan*/  LE_EXPR ; 
 char* FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int TDF_DETAILS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ UNKNOWN_LOC ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  boolean_type_node ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 scalar_t__ FUNC7 (struct loop*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,char*,...) ; 
 scalar_t__ FUNC10 (struct loop*) ; 
 int /*<<< orphan*/  FUNC11 (struct loop*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct loop*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct loop*,int /*<<< orphan*/ ) ; 
 struct loop* FUNC15 (struct loop*,struct loops*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,struct loop*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,struct loop*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct loop*,struct loop*,int) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 

struct loop*
FUNC22 (struct loop *loop, struct loops *loops, 
			       edge e, tree first_niters, 
			       tree niters, bool update_first_loop_count)
{
  struct loop *new_loop = NULL, *first_loop, *second_loop;
  edge skip_e;
  tree pre_condition;
  bitmap definitions;
  basic_block bb_before_second_loop, bb_after_second_loop;
  basic_block bb_before_first_loop;
  basic_block bb_between_loops;
  basic_block new_exit_bb;
  edge exit_e = loop->single_exit;
  LOC loop_loc;
  
  if (!FUNC13 (loop, e))
    return NULL;
  
  /* We have to initialize cfg_hooks. Then, when calling
   cfg_hooks->split_edge, the function tree_split_edge 
   is actually called and, when calling cfg_hooks->duplicate_block,
   the function tree_duplicate_bb is called.  */
  FUNC21 ();


  /* 1. Generate a copy of LOOP and put it on E (E is the entry/exit of LOOP).
        Resulting CFG would be:

        first_loop:
        do {
        } while ...

        second_loop:
        do {
        } while ...

        orig_exit_bb:
   */
  
  if (!(new_loop = FUNC15 (loop, loops, e)))
    {
      loop_loc = FUNC7 (loop);
      if (dump_file && (dump_flags & TDF_DETAILS))
        {
          if (loop_loc != UNKNOWN_LOC)
            FUNC9 (dump_file, "\n%s:%d: note: ",
                     FUNC1 (loop_loc), FUNC2 (loop_loc));
          FUNC9 (dump_file, "tree_duplicate_loop_to_edge_cfg failed.\n");
        }
      return NULL;
    }
  
  if (e == exit_e)
    {
      /* NEW_LOOP was placed after LOOP.  */
      first_loop = loop;
      second_loop = new_loop;
    }
  else
    {
      /* NEW_LOOP was placed before LOOP.  */
      first_loop = new_loop;
      second_loop = loop;
    }

  definitions = FUNC20 ();
  FUNC18 (loop, new_loop, e == exit_e);
  FUNC11 (new_loop);


  /* 2. Add the guard that controls whether the first loop is executed.
        Resulting CFG would be:

        bb_before_first_loop:
        if (FIRST_NITERS == 0) GOTO bb_before_second_loop
                               GOTO first-loop

        first_loop:
        do {
        } while ...

        bb_before_second_loop:

        second_loop:
        do {
        } while ...

        orig_exit_bb:
   */

  bb_before_first_loop = FUNC19 (FUNC10 (first_loop));
  FUNC4 (bb_before_first_loop, first_loop->outer);
  bb_before_second_loop = FUNC19 (first_loop->single_exit);
  FUNC4 (bb_before_second_loop, first_loop->outer);

  pre_condition =
    FUNC8 (LE_EXPR, boolean_type_node, first_niters, 
                 FUNC5 (FUNC3 (first_niters), 0));
  skip_e = FUNC12 (bb_before_first_loop, pre_condition,
                                  bb_before_second_loop, bb_before_first_loop);
  FUNC16 (skip_e, first_loop,
				      first_loop == new_loop,
				      &new_exit_bb, &definitions);


  /* 3. Add the guard that controls whether the second loop is executed.
        Resulting CFG would be:

        bb_before_first_loop:
        if (FIRST_NITERS == 0) GOTO bb_before_second_loop (skip first loop)
                               GOTO first-loop

        first_loop:
        do {
        } while ...

        bb_between_loops:
        if (FIRST_NITERS == NITERS) GOTO bb_after_second_loop (skip second loop)
                                    GOTO bb_before_second_loop

        bb_before_second_loop:

        second_loop:
        do {
        } while ...

        bb_after_second_loop:

        orig_exit_bb:
   */

  bb_between_loops = new_exit_bb;
  bb_after_second_loop = FUNC19 (second_loop->single_exit);
  FUNC4 (bb_after_second_loop, second_loop->outer);

  pre_condition = 
	FUNC8 (EQ_EXPR, boolean_type_node, first_niters, niters);
  skip_e = FUNC12 (bb_between_loops, pre_condition,
                                  bb_after_second_loop, bb_before_first_loop);
  FUNC17 (skip_e, second_loop,
                                     second_loop == new_loop, &new_exit_bb);

  /* 4. Make first-loop iterate FIRST_NITERS times, if requested.
   */
  if (update_first_loop_count)
    FUNC14 (first_loop, first_niters);

  FUNC0 (definitions);
  FUNC6 ();

  return new_loop;
}