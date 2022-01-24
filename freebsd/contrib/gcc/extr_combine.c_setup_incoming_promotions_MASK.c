#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_6__ {int /*<<< orphan*/  decl; } ;
struct TYPE_4__ {scalar_t__ (* promote_function_args ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {TYPE_1__ calls; } ;

/* Variables and functions */
 unsigned int FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  SIGN_EXTEND ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZERO_EXTEND ; 
 TYPE_3__* cfun ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,int*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_2__ targetm ; 

__attribute__((used)) static void
FUNC10 (void)
{
  unsigned int regno;
  rtx reg;
  enum machine_mode mode;
  int unsignedp;
  rtx first = FUNC6 ();

  if (targetm.calls.promote_function_args (FUNC3 (cfun->decl)))
    {
      for (regno = 0; regno < FIRST_PSEUDO_REGISTER; regno++)
	/* Check whether this register can hold an incoming pointer
	   argument.  FUNCTION_ARG_REGNO_P tests outgoing register
	   numbers, so translate if necessary due to register windows.  */
	if (FUNC0 (FUNC2 (regno))
	    && (reg = FUNC7 (regno, &mode, &unsignedp)) != 0)
	  {
	    FUNC8
	      (reg, first, FUNC5 ((unsignedp ? ZERO_EXTEND
					   : SIGN_EXTEND),
					  FUNC1 (reg),
					  FUNC4 (mode, const0_rtx)));
	  }
    }
}