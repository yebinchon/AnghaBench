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
struct elim_table {int /*<<< orphan*/  can_eliminate; int /*<<< orphan*/  initial_offset; int /*<<< orphan*/  offset; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
#define  ADDR_DIFF_VEC 139 
#define  ADDR_VEC 138 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  CALL_INSN 137 
#define  CODE_LABEL 136 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int const FUNC2 (int /*<<< orphan*/ ) ; 
#define  IF_THEN_ELSE 135 
#define  INSN 134 
#define  JUMP_INSN 133 
#define  LABEL_REF 132 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int NUM_ELIMINABLE_REGS ; 
#define  PARALLEL 131 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
#define  PC 130 
 int /*<<< orphan*/  REG_LABEL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
#define  RETURN 129 
#define  SET 128 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 size_t first_label_num ; 
 int /*<<< orphan*/ ** offsets_at ; 
 int* offsets_known_at ; 
 int /*<<< orphan*/  pc_rtx ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 struct elim_table* reg_eliminate ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14 (rtx x, rtx insn, int initial_p)
{
  enum rtx_code code = FUNC2 (x);
  rtx tem;
  unsigned int i;
  struct elim_table *p;

  switch (code)
    {
    case LABEL_REF:
      if (FUNC3 (x))
	return;

      x = FUNC9 (x, 0);

      /* ... fall through ...  */

    case CODE_LABEL:
      /* If we know nothing about this label, set the desired offsets.  Note
	 that this sets the offset at a label to be the offset before a label
	 if we don't know anything about the label.  This is not correct for
	 the label after a BARRIER, but is the best guess we can make.  If
	 we guessed wrong, we will suppress an elimination that might have
	 been possible had we been able to guess correctly.  */

      if (! offsets_known_at[FUNC1 (x) - first_label_num])
	{
	  for (i = 0; i < NUM_ELIMINABLE_REGS; i++)
	    offsets_at[FUNC1 (x) - first_label_num][i]
	      = (initial_p ? reg_eliminate[i].initial_offset
		 : reg_eliminate[i].offset);
	  offsets_known_at[FUNC1 (x) - first_label_num] = 1;
	}

      /* Otherwise, if this is the definition of a label and it is
	 preceded by a BARRIER, set our offsets to the known offset of
	 that label.  */

      else if (x == insn
	       && (tem = FUNC12 (insn)) != 0
	       && FUNC0 (tem))
	FUNC13 (insn);
      else
	/* If neither of the above cases is true, compare each offset
	   with those previously recorded and suppress any eliminations
	   where the offsets disagree.  */

	for (i = 0; i < NUM_ELIMINABLE_REGS; i++)
	  if (offsets_at[FUNC1 (x) - first_label_num][i]
	      != (initial_p ? reg_eliminate[i].initial_offset
		  : reg_eliminate[i].offset))
	    reg_eliminate[i].can_eliminate = 0;

      return;

    case JUMP_INSN:
      FUNC14 (FUNC4 (insn), insn, initial_p);

      /* ... fall through ...  */

    case INSN:
    case CALL_INSN:
      /* Any labels mentioned in REG_LABEL notes can be branched to indirectly
	 and hence must have all eliminations at their initial offsets.  */
      for (tem = FUNC5 (x); tem; tem = FUNC9 (tem, 1))
	if (FUNC6 (tem) == REG_LABEL)
	  FUNC14 (FUNC9 (tem, 0), insn, 1);
      return;

    case PARALLEL:
    case ADDR_VEC:
    case ADDR_DIFF_VEC:
      /* Each of the labels in the parallel or address vector must be
	 at their initial offsets.  We want the first field for PARALLEL
	 and ADDR_VEC and the second field for ADDR_DIFF_VEC.  */

      for (i = 0; i < (unsigned) FUNC11 (x, code == ADDR_DIFF_VEC); i++)
	FUNC14 (FUNC10 (x, code == ADDR_DIFF_VEC, i),
			   insn, initial_p);
      return;

    case SET:
      /* We only care about setting PC.  If the source is not RETURN,
	 IF_THEN_ELSE, or a label, disable any eliminations not at
	 their initial offsets.  Similarly if any arm of the IF_THEN_ELSE
	 isn't one of those possibilities.  For branches to a label,
	 call ourselves recursively.

	 Note that this can disable elimination unnecessarily when we have
	 a non-local goto since it will look like a non-constant jump to
	 someplace in the current function.  This isn't a significant
	 problem since such jumps will normally be when all elimination
	 pairs are back to their initial offsets.  */

      if (FUNC7 (x) != pc_rtx)
	return;

      switch (FUNC2 (FUNC8 (x)))
	{
	case PC:
	case RETURN:
	  return;

	case LABEL_REF:
	  FUNC14 (FUNC8 (x), insn, initial_p);
	  return;

	case IF_THEN_ELSE:
	  tem = FUNC9 (FUNC8 (x), 1);
	  if (FUNC2 (tem) == LABEL_REF)
	    FUNC14 (FUNC9 (tem, 0), insn, initial_p);
	  else if (FUNC2 (tem) != PC && FUNC2 (tem) != RETURN)
	    break;

	  tem = FUNC9 (FUNC8 (x), 2);
	  if (FUNC2 (tem) == LABEL_REF)
	    FUNC14 (FUNC9 (tem, 0), insn, initial_p);
	  else if (FUNC2 (tem) != PC && FUNC2 (tem) != RETURN)
	    break;
	  return;

	default:
	  break;
	}

      /* If we reach here, all eliminations must be at their initial
	 offset because we are doing a jump to a variable address.  */
      for (p = reg_eliminate; p < &reg_eliminate[NUM_ELIMINABLE_REGS]; p++)
	if (p->offset != p->initial_offset)
	  p->can_eliminate = 0;
      break;

    default:
      break;
    }
}