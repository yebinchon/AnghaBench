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
typedef  scalar_t__ rtx ;

/* Variables and functions */
#define  BARRIER 134 
#define  CALL_INSN 133 
#define  CODE_LABEL 132 
 int FUNC0 (scalar_t__) ; 
#define  INSN 131 
#define  JUMP_INSN 130 
 scalar_t__ FUNC1 (scalar_t__) ; 
#define  NOTE 129 
 scalar_t__ NULL_RTX ; 
#define  SEQUENCE 128 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

rtx
FUNC6 (rtx x, rtx before)
{
  rtx last = before;
  rtx insn;

  FUNC3 (before);

  if (x == NULL_RTX)
    return last;

  switch (FUNC0 (x))
    {
    case INSN:
    case JUMP_INSN:
    case CALL_INSN:
    case CODE_LABEL:
    case BARRIER:
    case NOTE:
      insn = x;
      while (insn)
	{
	  rtx next = FUNC1 (insn);
	  FUNC2 (insn, before);
	  last = insn;
	  insn = next;
	}
      break;

#ifdef ENABLE_RTL_CHECKING
    case SEQUENCE:
      gcc_unreachable ();
      break;
#endif

    default:
      last = FUNC5 (x);
      FUNC2 (last, before);
      break;
    }

  return last;
}