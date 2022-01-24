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
struct _Unwind_Exception {void* private_2; void* private_1; } ;
struct _Unwind_Context {int dummy; } ;
typedef  scalar_t__ _Unwind_Stop_Fn ;
typedef  scalar_t__ _Unwind_Reason_Code ;
typedef  void* _Unwind_Ptr ;

/* Variables and functions */
 scalar_t__ _URC_INSTALL_CONTEXT ; 
 scalar_t__ FUNC0 (struct _Unwind_Exception*,struct _Unwind_Context*) ; 
 int /*<<< orphan*/  FUNC1 (struct _Unwind_Context*) ; 
 int /*<<< orphan*/  FUNC2 (struct _Unwind_Context*,struct _Unwind_Context*) ; 

_Unwind_Reason_Code
FUNC3 (struct _Unwind_Exception *exc,
		      _Unwind_Stop_Fn stop, void * stop_argument)
{
  struct _Unwind_Context this_context, cur_context;
  _Unwind_Reason_Code code;

  FUNC1 (&this_context);
  cur_context = this_context;

  exc->private_1 = (_Unwind_Ptr) stop;
  exc->private_2 = (_Unwind_Ptr) stop_argument;

  code = FUNC0 (exc, &cur_context);
  if (code != _URC_INSTALL_CONTEXT)
    return code;

  FUNC2 (&this_context, &cur_context);
}