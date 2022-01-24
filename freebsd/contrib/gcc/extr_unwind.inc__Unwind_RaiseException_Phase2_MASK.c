#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct _Unwind_Exception {scalar_t__ private_2; int /*<<< orphan*/  exception_class; } ;
struct _Unwind_Context {int dummy; } ;
typedef  int /*<<< orphan*/  _Unwind_Reason_Code ;
struct TYPE_4__ {int /*<<< orphan*/  (* personality ) (int,int,int /*<<< orphan*/ ,struct _Unwind_Exception*,struct _Unwind_Context*) ;} ;
typedef  TYPE_1__ _Unwind_FrameState ;

/* Variables and functions */
 int _UA_CLEANUP_PHASE ; 
 int _UA_HANDLER_FRAME ; 
 int /*<<< orphan*/  _URC_CONTINUE_UNWIND ; 
 int /*<<< orphan*/  _URC_FATAL_PHASE2_ERROR ; 
 int /*<<< orphan*/  _URC_INSTALL_CONTEXT ; 
 int /*<<< orphan*/  _URC_NO_REASON ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,struct _Unwind_Exception*,struct _Unwind_Context*) ; 
 int /*<<< orphan*/  FUNC2 (struct _Unwind_Context*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (struct _Unwind_Context*) ; 
 int /*<<< orphan*/  FUNC4 (struct _Unwind_Context*,TYPE_1__*) ; 

__attribute__((used)) static _Unwind_Reason_Code
FUNC5(struct _Unwind_Exception *exc,
			      struct _Unwind_Context *context)
{
  _Unwind_Reason_Code code;

  while (1)
    {
      _Unwind_FrameState fs;
      int match_handler;

      code = FUNC2 (context, &fs);

      /* Identify when we've reached the designated handler context.  */
      match_handler = (FUNC3 (context) == exc->private_2
		       ? _UA_HANDLER_FRAME : 0);

      if (code != _URC_NO_REASON)
	/* Some error encountered.  Usually the unwinder doesn't
	   diagnose these and merely crashes.  */
	return _URC_FATAL_PHASE2_ERROR;

      /* Unwind successful.  Run the personality routine, if any.  */
      if (fs.personality)
	{
	  code = (*fs.personality) (1, _UA_CLEANUP_PHASE | match_handler,
				    exc->exception_class, exc, context);
	  if (code == _URC_INSTALL_CONTEXT)
	    break;
	  if (code != _URC_CONTINUE_UNWIND) 
	    return _URC_FATAL_PHASE2_ERROR;
	}

      /* Don't let us unwind past the handler context.  */
      FUNC0 (!match_handler);

      FUNC4 (context, &fs);
    }

  return code;
}