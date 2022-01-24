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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
#define  CALL_INSN 131 
#define  CODE_LABEL 130 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  INSN 129 
#define  JUMP_INSN 128 
 int /*<<< orphan*/  RETURN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

rtx
FUNC9 (rtx x)
{
  enum rtx_code code = FUNC2 (x);

  switch (code)
    {
    case CODE_LABEL:
      return FUNC7 (x);
    case INSN:
      return FUNC5 (x);
    case  JUMP_INSN:
      {
	rtx insn = FUNC6 (x);
	if (FUNC1 (insn) || FUNC0 (x) == RETURN)
	  return FUNC3 ();
	return insn;
      }
    case CALL_INSN:
      return FUNC4 (x);
    default:
      FUNC8 ();
    }
}