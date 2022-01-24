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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
#define  BARRIER 134 
#define  CALL_INSN 133 
#define  CODE_LABEL 132 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  INSN 131 
#define  JUMP_INSN 130 
#define  NOTE 129 
#define  SEQUENCE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

rtx
FUNC6 (rtx x, rtx after)
{
  rtx last;

  FUNC3 (after);

  switch (FUNC0 (x))
    {
    case INSN:
    case JUMP_INSN:
    case CALL_INSN:
    case CODE_LABEL:
    case BARRIER:
    case NOTE:
      last = FUNC2 (x, after);
      break;

#ifdef ENABLE_RTL_CHECKING
    case SEQUENCE:
      gcc_unreachable ();
      break;
#endif

    default:
      last = FUNC5 (x);
      FUNC1 (last, after);
      break;
    }

  return last;
}