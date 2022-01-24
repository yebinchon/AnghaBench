#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * r; } ;
struct TYPE_6__ {TYPE_4__ core; } ;
typedef  TYPE_1__ phase2_vrs ;
typedef  int (* personality_routine ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;
typedef  int _Unwind_Reason_Code ;
typedef  int /*<<< orphan*/  _Unwind_Control_Block ;
typedef  int /*<<< orphan*/  _Unwind_Context ;

/* Variables and functions */
 size_t R_PC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
#define  _URC_CONTINUE_UNWIND 129 
#define  _URC_INSTALL_CONTEXT 128 
 int /*<<< orphan*/  _US_UNWIND_FRAME_RESUME ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 

_Unwind_Reason_Code
FUNC8 (_Unwind_Control_Block * ucbp, phase2_vrs * entry_vrs)
{
  _Unwind_Reason_Code pr_result;

  /* Recover the saved address.  */
  entry_vrs->core.r[R_PC] = FUNC2 (ucbp);

  if (FUNC0 (ucbp))
    {
      FUNC7 (ucbp, entry_vrs, 1);

      /* We can't return failure at this point.  */
      FUNC3 ();
    }

  /* Call the cached PR.  */
  pr_result = ((personality_routine) FUNC1 (ucbp))
	(_US_UNWIND_FRAME_RESUME, ucbp, (_Unwind_Context *) entry_vrs);

  switch (pr_result)
    {
    case _URC_INSTALL_CONTEXT:
      /* Upload the registers to enter the landing pad.  */
      FUNC4 (&entry_vrs->core);

    case _URC_CONTINUE_UNWIND:
      /* Continue unwinding the next frame.  */
      FUNC6 (ucbp, entry_vrs);

    default:
      FUNC3 ();
    }
}