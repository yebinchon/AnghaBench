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
struct propagate_block_info {int flags; } ;
typedef  scalar_t__ rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
#define  ASM_OPERANDS 132 
#define  CLOBBER 131 
#define  COND_EXEC 130 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
#define  PARALLEL 129 
 int PROP_ASM_SCAN ; 
 scalar_t__ REG_INC ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
#define  SET 128 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct propagate_block_info*,int,scalar_t__,scalar_t__,scalar_t__,int) ; 

__attribute__((used)) static void
FUNC11 (struct propagate_block_info *pbi, rtx x, rtx insn)
{
  rtx cond = NULL_RTX;
  rtx link;
  enum rtx_code code;
  int flags = pbi->flags;

  if (insn)
    for (link = FUNC3 (insn); link; link = FUNC6 (link, 1))
      {
	if (FUNC4 (link) == REG_INC)
	  FUNC10 (pbi, SET, FUNC6 (link, 0),
		      (FUNC2 (x) == COND_EXEC
		       ? FUNC1 (x) : NULL_RTX),
		      insn, flags);
      }
 retry:
  switch (code = FUNC2 (x))
    {
    case SET:
      if (FUNC2 (FUNC6 (x, 1)) == ASM_OPERANDS)
	flags |= PROP_ASM_SCAN;
      /* Fall through */
    case CLOBBER:
      FUNC10 (pbi, code, FUNC5 (x), cond, insn, flags);
      return;

    case COND_EXEC:
      cond = FUNC1 (x);
      x = FUNC0 (x);
      goto retry;

    case PARALLEL:
      {
	int i;

	/* We must scan forwards.  If we have an asm, we need to set
	   the PROP_ASM_SCAN flag before scanning the clobbers.  */
	for (i = 0; i < FUNC8 (x, 0); i++)
	  {
	    rtx sub = FUNC7 (x, 0, i);
	    switch (code = FUNC2 (sub))
	      {
	      case COND_EXEC:
		FUNC9 (!cond);

		cond = FUNC1 (sub);
		sub = FUNC0 (sub);
		if (FUNC2 (sub) == SET)
		  goto mark_set;
		if (FUNC2 (sub) == CLOBBER)
		  goto mark_clob;
		break;

	      case SET:
	      mark_set:
		if (FUNC2 (FUNC6 (sub, 1)) == ASM_OPERANDS)
		  flags |= PROP_ASM_SCAN;
		/* Fall through */
	      case CLOBBER:
	      mark_clob:
		FUNC10 (pbi, code, FUNC5 (sub), cond, insn, flags);
		break;

	      case ASM_OPERANDS:
		flags |= PROP_ASM_SCAN;
		break;

	      default:
		break;
	      }
	  }
	break;
      }

    default:
      break;
    }
}