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
struct symtab_and_line {scalar_t__ line; int /*<<< orphan*/ * symtab; scalar_t__ pc; } ;
struct breakpoint {int thread; int /*<<< orphan*/  disposition; int /*<<< orphan*/  enable_state; int /*<<< orphan*/ * addr_string; int /*<<< orphan*/ * cond_string; int /*<<< orphan*/ * cond; scalar_t__ number; } ;

/* Variables and functions */
 int /*<<< orphan*/  bp_catch_exec ; 
 int /*<<< orphan*/  bp_enabled ; 
 scalar_t__ breakpoint_count ; 
 int /*<<< orphan*/  disp_del ; 
 int /*<<< orphan*/  disp_donttouch ; 
 int /*<<< orphan*/  FUNC0 (struct symtab_and_line*) ; 
 int /*<<< orphan*/  FUNC1 (struct breakpoint*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct breakpoint* FUNC4 (struct symtab_and_line,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void
FUNC6 (int tempflag, char *cond_string)
{
  struct symtab_and_line sal;
  struct breakpoint *b;
  int thread = -1;		/* All threads. */

  FUNC0 (&sal);
  sal.pc = 0;
  sal.symtab = NULL;
  sal.line = 0;

  b = FUNC4 (sal, bp_catch_exec);
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