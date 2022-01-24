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
struct _Unwind_Exception {scalar_t__ private_1; } ;
struct _Unwind_Context {int dummy; } ;
typedef  scalar_t__ _Unwind_Reason_Code ;

/* Variables and functions */
 scalar_t__ _URC_INSTALL_CONTEXT ; 
 scalar_t__ FUNC0 (struct _Unwind_Exception*,struct _Unwind_Context*) ; 
 scalar_t__ FUNC1 (struct _Unwind_Exception*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct _Unwind_Context*) ; 
 int /*<<< orphan*/  FUNC4 (struct _Unwind_Context*,struct _Unwind_Context*) ; 

_Unwind_Reason_Code
FUNC5 (struct _Unwind_Exception *exc)
{
  struct _Unwind_Context this_context, cur_context;
  _Unwind_Reason_Code code;

  /* Choose between continuing to process _Unwind_RaiseException
     or _Unwind_ForcedUnwind.  */
  if (exc->private_1 == 0)
    return FUNC1 (exc);

  FUNC3 (&this_context);
  cur_context = this_context;

  code = FUNC0 (exc, &cur_context);

  FUNC2 (code == _URC_INSTALL_CONTEXT);

  FUNC4 (&this_context, &cur_context);
}