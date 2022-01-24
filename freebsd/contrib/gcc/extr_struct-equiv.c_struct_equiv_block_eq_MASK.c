#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ x_start; scalar_t__ y_start; int ninsns; int local_count; int /*<<< orphan*/  input_valid; } ;
struct TYPE_5__ {scalar_t__ x_start; scalar_t__ ninsns; } ;
struct equiv_info {int mode; int need_rerun; int check_input_conflict; int had_input_conflict; int dying_inputs; TYPE_1__ cur; int /*<<< orphan*/ * x_local; int /*<<< orphan*/ * y_local; int /*<<< orphan*/  y_local_live; int /*<<< orphan*/  x_local_live; int /*<<< orphan*/  input_reg; int /*<<< orphan*/  y_input; int /*<<< orphan*/  x_input; TYPE_2__ best_match; int /*<<< orphan*/  y_block; int /*<<< orphan*/  x_block; scalar_t__ y_end; scalar_t__ x_end; } ;
typedef  scalar_t__ rtx ;
typedef  int /*<<< orphan*/  regset_head ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int STRUCT_EQUIV_FINAL ; 
 int STRUCT_EQUIV_MATCH_JUMPS ; 
 int STRUCT_EQUIV_NEED_FULL_BLOCK ; 
 int STRUCT_EQUIV_START ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct equiv_info*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct equiv_info*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,scalar_t__,struct equiv_info*) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct equiv_info*) ; 
 scalar_t__ FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,struct equiv_info*) ; 
 int /*<<< orphan*/  FUNC22 (int,struct equiv_info*) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__,scalar_t__,struct equiv_info*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*,struct equiv_info*) ; 

int
FUNC25 (int mode, struct equiv_info *info)
{
  rtx x_stop, y_stop;
  rtx xi, yi;
  int i;

  if (mode & STRUCT_EQUIV_START)
    {
      x_stop = FUNC1 (info->x_block);
      y_stop = FUNC1 (info->y_block);
      if (!x_stop || !y_stop)
	return 0;
    }
  else
    {
      x_stop = info->cur.x_start;
      y_stop = info->cur.y_start;
    }
  if (!FUNC22 (mode, info))
    FUNC14 ();

  /* Skip simple jumps at the end of the blocks.  Complex jumps still
     need to be compared for equivalence, which we'll do below.  */

  xi = FUNC0 (info->x_block);
  if (FUNC16 (xi)
      || (FUNC18 (xi) && !FUNC19 (FUNC5 (xi))))
    {
      info->cur.x_start = xi;
      xi = FUNC6 (xi);
    }

  yi = FUNC0 (info->y_block);
  if (FUNC16 (yi)
      || (FUNC18 (yi) && !FUNC19 (FUNC5 (yi))))
    {
      info->cur.y_start = yi;
      /* Count everything except for unconditional jump as insn.  */
      /* ??? Is it right to count unconditional jumps with a clobber?
	 Should we count conditional returns?  */
      if (!FUNC20 (yi) && !FUNC18 (yi) && info->cur.x_start)
	info->cur.ninsns++;
      yi = FUNC6 (yi);
    }

  if (mode & STRUCT_EQUIV_MATCH_JUMPS)
    {
      /* The caller is expected to have compared the jumps already, but we
	 need to match them again to get any local registers and inputs.  */
      FUNC13 (!info->cur.x_start == !info->cur.y_start);
      if (info->cur.x_start)
	{
	  if (FUNC7 (info->cur.x_start)
	      ? !FUNC11 (info, false)
	      : !FUNC15 (info->cur.x_start, info->cur.y_start, info))
	    FUNC14 ();
	}
      else if (FUNC7 (xi) && FUNC7 (yi))
	{
	  info->cur.x_start = xi;
	  info->cur.y_start = yi;
	  xi = FUNC6 (xi);
	  yi = FUNC6 (yi);
	  info->cur.ninsns++;
	  if (!FUNC11 (info, false))
	    FUNC14 ();
	}
      if (info->cur.x_start && info->mode & STRUCT_EQUIV_FINAL)
	FUNC23 (info->cur.x_start, info->cur.y_start, info);
    }

  FUNC21 (&info->best_match, info);
  info->x_end = xi;
  info->y_end = yi;
  if (info->cur.x_start != x_stop)
    for (;;)
      {
	/* Ignore notes.  */
	while (!FUNC4 (xi) && xi != x_stop)
	  xi = FUNC6 (xi);

	while (!FUNC4 (yi) && yi != y_stop)
	  yi = FUNC6 (yi);

	if (!FUNC15 (xi, yi, info))
	  break;
	if (FUNC4 (xi))
	  {
	    if (info->mode & STRUCT_EQUIV_FINAL)
	      FUNC23 (xi, yi, info);
	    info->cur.ninsns++;
	    FUNC21 (&info->best_match, info);
	  }
	if (xi == x_stop || yi == y_stop)
	  {
	    /* If we reached the start of at least one of the blocks, but
	       best_match hasn't been advanced back to the first valid insn
	       yet, represent the increased benefit of completing the block
	       as an increased instruction count.  */
	    if (info->best_match.x_start != info->cur.x_start
		&& (xi == FUNC1 (info->x_block)
		    || yi == FUNC1 (info->y_block)))
	      {
		info->cur.ninsns++;
		FUNC21 (&info->best_match, info);
		info->cur.ninsns--;
		if (info->best_match.ninsns > info->cur.ninsns)
		  info->best_match.ninsns = info->cur.ninsns;
	      }
	    break;
	  }
	xi = FUNC6 (xi);
	yi = FUNC6 (yi);
      }

  /* If we failed to match an insn, but had some changes registered from
     trying to make the insns match, we need to cancel these changes now.  */
  FUNC10 (0);
  /* Restore to best_match to get the sequence with the best known-so-far
     cost-benefit difference.  */
  FUNC24 (&info->best_match, info);

  /* Include preceding notes and labels in the cross-jump / if-conversion.
     One, this may bring us to the head of the blocks.
     Two, it keeps line number notes as matched as may be.  */
  if (info->cur.ninsns)
    {
      xi = info->cur.x_start;
      yi = info->cur.y_start;
      while (xi != x_stop && !FUNC4 (FUNC6 (xi)))
	xi = FUNC6 (xi);

      while (yi != y_stop && !FUNC4 (FUNC6 (yi)))
	yi = FUNC6 (yi);

      info->cur.x_start = xi;
      info->cur.y_start = yi;
    }

  if (!info->cur.input_valid)
    info->x_input = info->y_input = info->input_reg = NULL_RTX;
  if (!info->need_rerun)
    {
      FUNC12 (info);
      if (info->mode & STRUCT_EQUIV_FINAL)
	{
	  if (info->check_input_conflict && ! FUNC17 (info))
	    FUNC14 ();
	}
      else
	{
	  bool input_conflict = info->had_input_conflict;

	  if (!input_conflict
	      && info->dying_inputs > 1
	      && FUNC9 (info->x_local_live, info->y_local_live))
	    {
	      regset_head clobbered_regs;

	      FUNC3 (&clobbered_regs);
	      for (i = 0; i < info->cur.local_count; i++)
		{
		  if (FUNC8 (&clobbered_regs, info->y_local[i], 0))
		    {
		      input_conflict = true;
		      break;
		    }
		  FUNC8 (&clobbered_regs, info->x_local[i], 1);
		}
	      FUNC2 (&clobbered_regs);
	    }
	  if (input_conflict && !info->check_input_conflict)
	    info->need_rerun = true;
	  info->check_input_conflict = input_conflict;
	}
    }

  if (info->mode & STRUCT_EQUIV_NEED_FULL_BLOCK
      && (info->cur.x_start != x_stop || info->cur.y_start != y_stop))
    return 0;
  return info->cur.ninsns;
}