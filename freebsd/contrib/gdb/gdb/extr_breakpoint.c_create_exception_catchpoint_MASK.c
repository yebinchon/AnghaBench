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
struct symtab_and_line {int dummy; } ;
struct breakpoint {int thread; int /*<<< orphan*/  disposition; int /*<<< orphan*/  enable_state; int /*<<< orphan*/ * addr_string; int /*<<< orphan*/ * cond_string; int /*<<< orphan*/ * cond; scalar_t__ number; } ;
typedef  enum exception_event_kind { ____Placeholder_exception_event_kind } exception_event_kind ;
typedef  enum bptype { ____Placeholder_bptype } bptype ;

/* Variables and functions */
#define  EX_EVENT_CATCH 129 
#define  EX_EVENT_THROW 128 
 int bp_catch_catch ; 
 int bp_catch_throw ; 
 int /*<<< orphan*/  bp_enabled ; 
 scalar_t__ breakpoint_count ; 
 int /*<<< orphan*/  disp_del ; 
 int /*<<< orphan*/  disp_donttouch ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct breakpoint*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct breakpoint* FUNC4 (struct symtab_and_line,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6 (int tempflag, char *cond_string,
			     enum exception_event_kind ex_event,
			     struct symtab_and_line *sal)
{
  struct breakpoint *b;
  int thread = -1;		/* All threads. */
  enum bptype bptype;

  if (!sal)			/* no exception support? */
    return;

  switch (ex_event)
    {
    case EX_EVENT_THROW:
      bptype = bp_catch_throw;
      break;
    case EX_EVENT_CATCH:
      bptype = bp_catch_catch;
      break;
    default:			/* error condition */
      FUNC0 ("Internal error -- invalid catchpoint kind");
    }

  b = FUNC4 (*sal, bptype);
  FUNC3 (breakpoint_count + 1);
  b->number = breakpoint_count;
  b->cond = NULL;
  b->cond_string = (cond_string == NULL) ? 
    NULL : FUNC2 (cond_string, FUNC5 (cond_string));
  b->thread = thread;
  b->addr_string = NULL;
  b->enable_state = bp_enabled;
  b->disposition = tempflag ? disp_del : disp_donttouch;
  FUNC1 (b);
}