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
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  OPTAB_DIRECT ; 
 int VOIDmode ; 
 TYPE_2__* clz_optab ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  sub_optab ; 
 scalar_t__ FUNC10 (scalar_t__,int,int,int,int) ; 

__attribute__((used)) static rtx
FUNC11 (enum machine_mode mode, rtx op0, rtx target)
{
  enum mode_class class = FUNC3 (mode);
  if (FUNC0 (class))
    {
      enum machine_mode wider_mode;
      for (wider_mode = FUNC4 (mode);
	   wider_mode != VOIDmode;
	   wider_mode = FUNC4 (wider_mode))
	{
	  if (clz_optab->handlers[(int) wider_mode].insn_code
	      != CODE_FOR_nothing)
	    {
	      rtx xop0, temp, last;

	      last = FUNC9 ();

	      if (target == 0)
		target = FUNC8 (mode);
	      xop0 = FUNC10 (op0, wider_mode, mode, true, false);
	      temp = FUNC7 (wider_mode, clz_optab, xop0, NULL_RTX, true);
	      if (temp != 0)
		temp = FUNC6 (wider_mode, sub_optab, temp,
				     FUNC1 (FUNC2 (wider_mode)
					      - FUNC2 (mode)),
				     target, true, OPTAB_DIRECT);
	      if (temp == 0)
		FUNC5 (last);

	      return temp;
	    }
	}
    }
  return 0;
}