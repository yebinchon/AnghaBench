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
typedef  scalar_t__ rtx ;
struct TYPE_2__ {int first_save_gpr; int last_save_gpr; int first_restore_gpr; int last_restore_gpr; } ;

/* Variables and functions */
 int BASE_REGNUM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int HARD_FRAME_POINTER_REGNUM ; 
 scalar_t__ INSN ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ MEM ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ PARALLEL ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ REG ; 
 int FUNC5 (scalar_t__) ; 
 int RETURN_REGNUM ; 
 scalar_t__ SET ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int STACK_POINTER_REGNUM ; 
 scalar_t__ TARGET_CPU_ZARCH ; 
 int UNITS_PER_WORD ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__ cfun_frame_layout ; 
 scalar_t__ const0_rtx ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC13 () ; 
 scalar_t__ FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 scalar_t__ FUNC18 (scalar_t__,int,int,int) ; 
 scalar_t__ FUNC19 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC20 (void)
{
  rtx insn, new_insn, next_insn;

  /* Do a final recompute of the frame-related data.  */

  FUNC17 ();

  /* If all special registers are in fact used, there's nothing we
     can do, so no point in walking the insn list.  */

  if (cfun_frame_layout.first_save_gpr <= BASE_REGNUM 
      && cfun_frame_layout.last_save_gpr >= BASE_REGNUM
      && (TARGET_CPU_ZARCH 
          || (cfun_frame_layout.first_save_gpr <= RETURN_REGNUM 
              && cfun_frame_layout.last_save_gpr >= RETURN_REGNUM)))
    return;

  /* Search for prologue/epilogue insns and replace them.  */

  for (insn = FUNC13 (); insn; insn = next_insn)
    {
      int first, last, off;
      rtx set, base, offset;

      next_insn = FUNC3 (insn);

      if (FUNC0 (insn) != INSN)
	continue;

      if (FUNC0 (FUNC4 (insn)) == PARALLEL
	  && FUNC19 (FUNC4 (insn), VOIDmode))
	{
	  set = FUNC9 (FUNC4 (insn), 0, 0);
	  first = FUNC5 (FUNC7 (set));
	  last = first + FUNC10 (FUNC4 (insn), 0) - 1;
	  offset = const0_rtx;
	  base = FUNC11 (FUNC8 (FUNC6 (set), 0), &offset);
	  off = FUNC2 (offset);

	  if (FUNC0 (base) != REG || off < 0)
	    continue;
	  if (cfun_frame_layout.first_save_gpr != -1
	      && (cfun_frame_layout.first_save_gpr < first
		  || cfun_frame_layout.last_save_gpr > last))
	    continue;
	  if (FUNC5 (base) != STACK_POINTER_REGNUM
	      && FUNC5 (base) != HARD_FRAME_POINTER_REGNUM)
	    continue;
	  if (first > BASE_REGNUM || last < BASE_REGNUM)
	    continue;

	  if (cfun_frame_layout.first_save_gpr != -1)
	    {
	      new_insn 	= FUNC18 (base, 
				     off + (cfun_frame_layout.first_save_gpr
					    - first) * UNITS_PER_WORD, 
				     cfun_frame_layout.first_save_gpr,
				     cfun_frame_layout.last_save_gpr);
	      new_insn = FUNC12 (new_insn, insn);
	      FUNC1 (new_insn, -1);
	    }

	  FUNC15 (insn);
	  continue;
	}

      if (cfun_frame_layout.first_save_gpr == -1
	  && FUNC0 (FUNC4 (insn)) == SET
	  && FUNC0 (FUNC7 (FUNC4 (insn))) == REG
	  && (FUNC5 (FUNC7 (FUNC4 (insn))) == BASE_REGNUM
	      || (!TARGET_CPU_ZARCH
		  && FUNC5 (FUNC7 (FUNC4 (insn))) == RETURN_REGNUM))
	  && FUNC0 (FUNC6 (FUNC4 (insn))) == MEM)
	{
	  set = FUNC4 (insn);
	  first = FUNC5 (FUNC7 (set));
	  offset = const0_rtx;
	  base = FUNC11 (FUNC8 (FUNC6 (set), 0), &offset);
	  off = FUNC2 (offset);

	  if (FUNC0 (base) != REG || off < 0)
	    continue;
	  if (FUNC5 (base) != STACK_POINTER_REGNUM
	      && FUNC5 (base) != HARD_FRAME_POINTER_REGNUM)
	    continue;

	  FUNC15 (insn);
	  continue;
	}

      if (FUNC0 (FUNC4 (insn)) == PARALLEL
	  && FUNC14 (FUNC4 (insn), VOIDmode))
	{
	  set = FUNC9 (FUNC4 (insn), 0, 0);
	  first = FUNC5 (FUNC6 (set));
	  last = first + FUNC10 (FUNC4 (insn), 0) - 1;
	  offset = const0_rtx;
	  base = FUNC11 (FUNC8 (FUNC7 (set), 0), &offset);
	  off = FUNC2 (offset);

	  if (FUNC0 (base) != REG || off < 0)
	    continue;
	  if (cfun_frame_layout.first_restore_gpr != -1
	      && (cfun_frame_layout.first_restore_gpr < first
		  || cfun_frame_layout.last_restore_gpr > last))
	    continue;
	  if (FUNC5 (base) != STACK_POINTER_REGNUM
	      && FUNC5 (base) != HARD_FRAME_POINTER_REGNUM)
	    continue;
	  if (first > BASE_REGNUM || last < BASE_REGNUM)
	    continue;

	  if (cfun_frame_layout.first_restore_gpr != -1)
	    {
	      new_insn = FUNC16 (base, 
				       off + (cfun_frame_layout.first_restore_gpr
					      - first) * UNITS_PER_WORD, 
				       cfun_frame_layout.first_restore_gpr,
				       cfun_frame_layout.last_restore_gpr);
	      new_insn = FUNC12 (new_insn, insn);
	      FUNC1 (new_insn, -1);
	    }

	  FUNC15 (insn);
	  continue;
	}

      if (cfun_frame_layout.first_restore_gpr == -1
	  && FUNC0 (FUNC4 (insn)) == SET
	  && FUNC0 (FUNC6 (FUNC4 (insn))) == REG
	  && (FUNC5 (FUNC6 (FUNC4 (insn))) == BASE_REGNUM
	      || (!TARGET_CPU_ZARCH
		  && FUNC5 (FUNC6 (FUNC4 (insn))) == RETURN_REGNUM))
	  && FUNC0 (FUNC7 (FUNC4 (insn))) == MEM)
	{
	  set = FUNC4 (insn);
	  first = FUNC5 (FUNC6 (set));
	  offset = const0_rtx;
	  base = FUNC11 (FUNC8 (FUNC7 (set), 0), &offset);
	  off = FUNC2 (offset);

	  if (FUNC0 (base) != REG || off < 0)
	    continue;
	  if (FUNC5 (base) != STACK_POINTER_REGNUM
	      && FUNC5 (base) != HARD_FRAME_POINTER_REGNUM)
	    continue;

	  FUNC15 (insn);
	  continue;
	}
    }
}