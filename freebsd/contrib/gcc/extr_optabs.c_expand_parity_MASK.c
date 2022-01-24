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
typedef  scalar_t__ rtx ;
typedef  enum mode_class { ____Placeholder_mode_class } mode_class ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_5__ {TYPE_1__* handlers; } ;
struct TYPE_4__ {scalar_t__ insn_code; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ CODE_FOR_nothing ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  OPTAB_DIRECT ; 
 int VOIDmode ; 
 int /*<<< orphan*/  and_optab ; 
 int /*<<< orphan*/  const1_rtx ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 () ; 
 TYPE_2__* popcount_optab ; 
 scalar_t__ FUNC8 (scalar_t__,int,int,int,int) ; 

__attribute__((used)) static rtx
FUNC9 (enum machine_mode mode, rtx op0, rtx target)
{
  enum mode_class class = FUNC1 (mode);
  if (FUNC0 (class))
    {
      enum machine_mode wider_mode;
      for (wider_mode = mode; wider_mode != VOIDmode;
	   wider_mode = FUNC2 (wider_mode))
	{
	  if (popcount_optab->handlers[(int) wider_mode].insn_code
	      != CODE_FOR_nothing)
	    {
	      rtx xop0, temp, last;

	      last = FUNC7 ();

	      if (target == 0)
		target = FUNC6 (mode);
	      xop0 = FUNC8 (op0, wider_mode, mode, true, false);
	      temp = FUNC5 (wider_mode, popcount_optab, xop0, NULL_RTX,
				  true);
	      if (temp != 0)
		temp = FUNC4 (wider_mode, and_optab, temp, const1_rtx,
				     target, true, OPTAB_DIRECT);
	      if (temp == 0)
		FUNC3 (last);

	      return temp;
	    }
	}
    }
  return 0;
}