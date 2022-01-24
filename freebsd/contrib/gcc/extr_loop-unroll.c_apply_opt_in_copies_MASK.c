#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct var_to_expand {scalar_t__ insn; } ;
struct opt_info {unsigned int first_new_block; scalar_t__ insns_to_split; int /*<<< orphan*/ * loop_exit; scalar_t__ insns_with_var_to_expand; int /*<<< orphan*/ * loop_preheader; } ;
struct iv_to_split {scalar_t__ insn; } ;
typedef  scalar_t__ rtx ;
typedef  TYPE_1__* basic_block ;
struct TYPE_9__ {scalar_t__ aux; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  allocate_basic_variable ; 
 int /*<<< orphan*/  combine_var_copies_in_loop_exit ; 
 unsigned int FUNC7 (size_t,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct var_to_expand*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 TYPE_1__* FUNC10 (TYPE_1__*) ; 
 TYPE_1__* FUNC11 (TYPE_1__*) ; 
 struct var_to_expand* FUNC12 (scalar_t__,struct var_to_expand*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct var_to_expand*,scalar_t__) ; 
 int /*<<< orphan*/  insert_var_expansion_initialization ; 
 scalar_t__ last_basic_block ; 
 int /*<<< orphan*/  FUNC15 (struct var_to_expand*,scalar_t__,unsigned int) ; 

__attribute__((used)) static void
FUNC16 (struct opt_info *opt_info, 
                     unsigned n_copies, bool unrolling, 
                     bool rewrite_original_loop)
{
  unsigned i, delta;
  basic_block bb, orig_bb;
  rtx insn, orig_insn, next;
  struct iv_to_split ivts_templ, *ivts;
  struct var_to_expand ve_templ, *ves;
  
  /* Sanity check -- we need to put initialization in the original loop
     body.  */
  FUNC9 (!unrolling || rewrite_original_loop);
  
  /* Allocate the basic variables (i0).  */
  if (opt_info->insns_to_split)
    FUNC13 (opt_info->insns_to_split, allocate_basic_variable, NULL);
  
  for (i = opt_info->first_new_block; i < (unsigned) last_basic_block; i++)
    {
      bb = FUNC0 (i);
      orig_bb = FUNC11 (bb);
      
      /* bb->aux holds position in copy sequence initialized by
	 duplicate_loop_to_header_edge.  */
      delta = FUNC7 ((size_t)bb->aux, n_copies,
					unrolling);
      bb->aux = 0;
      orig_insn = FUNC2 (orig_bb);
      for (insn = FUNC2 (bb); insn != FUNC5 (FUNC1 (bb)); insn = next)
        {
          next = FUNC5 (insn);
          if (!FUNC4 (insn))
            continue;
          
          while (!FUNC4 (orig_insn))
            orig_insn = FUNC5 (orig_insn);
          
          ivts_templ.insn = orig_insn;
          ve_templ.insn = orig_insn;
          
          /* Apply splitting iv optimization.  */
          if (opt_info->insns_to_split)
            {
              ivts = FUNC12 (opt_info->insns_to_split, &ivts_templ);
              
              if (ivts)
                {
		  FUNC9 (FUNC3 (FUNC6 (insn))
			      == FUNC3 (FUNC6 (orig_insn)));
                  
                  if (!delta)
                    FUNC14 (ivts, insn);
                  FUNC15 (ivts, insn, delta);
                }
            }
          /* Apply variable expansion optimization.  */
          if (unrolling && opt_info->insns_with_var_to_expand)
            {
              ves = FUNC12 (opt_info->insns_with_var_to_expand, &ve_templ);
              if (ves)
                { 
		  FUNC9 (FUNC3 (FUNC6 (insn))
			      == FUNC3 (FUNC6 (orig_insn)));
                  FUNC8 (ves, insn);
                }
            }
          orig_insn = FUNC5 (orig_insn);
        }
    }

  if (!rewrite_original_loop)
    return;
  
  /* Initialize the variable expansions in the loop preheader
     and take care of combining them at the loop exit.  */ 
  if (opt_info->insns_with_var_to_expand)
    {
      FUNC13 (opt_info->insns_with_var_to_expand, 
                     insert_var_expansion_initialization, 
                     opt_info->loop_preheader);
      FUNC13 (opt_info->insns_with_var_to_expand, 
                     combine_var_copies_in_loop_exit, 
                     opt_info->loop_exit);
    }
  
  /* Rewrite also the original loop body.  Find them as originals of the blocks
     in the last copied iteration, i.e. those that have
     get_bb_copy (get_bb_original (bb)) == bb.  */
  for (i = opt_info->first_new_block; i < (unsigned) last_basic_block; i++)
    {
      bb = FUNC0 (i);
      orig_bb = FUNC11 (bb);
      if (FUNC10 (orig_bb) != bb)
	continue;
      
      delta = FUNC7 (0, n_copies, unrolling);
      for (orig_insn = FUNC2 (orig_bb);
           orig_insn != FUNC5 (FUNC1 (bb));
           orig_insn = next)
        {
          next = FUNC5 (orig_insn);
          
          if (!FUNC4 (orig_insn))
 	    continue;
          
          ivts_templ.insn = orig_insn;
          if (opt_info->insns_to_split)
            {
              ivts = FUNC12 (opt_info->insns_to_split, &ivts_templ);
              if (ivts)
                {
                  if (!delta)
                    FUNC14 (ivts, orig_insn);
                  FUNC15 (ivts, orig_insn, delta);
                  continue;
                }
            }
          
        }
    }
}