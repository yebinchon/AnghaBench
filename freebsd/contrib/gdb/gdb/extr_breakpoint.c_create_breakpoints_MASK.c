#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct symtabs_and_lines {int nelts; struct symtab_and_line* sals; } ;
struct symtab_and_line {int /*<<< orphan*/  section; int /*<<< orphan*/  pc; } ;
struct expression {int dummy; } ;
struct breakpoint {int thread; char* addr_string; char* cond_string; int ignore_count; int disposition; scalar_t__ commands; TYPE_1__* loc; struct expression* cond; int /*<<< orphan*/  enable_state; scalar_t__ number; } ;
typedef  enum bptype { ____Placeholder_bptype } bptype ;
typedef  enum bpdisp { ____Placeholder_bpdisp } bpdisp ;
struct TYPE_2__ {int /*<<< orphan*/  address; } ;

/* Variables and functions */
 int FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bp_enabled ; 
 int bp_hardware_breakpoint ; 
 scalar_t__ breakpoint_count ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct breakpoint*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct expression* FUNC8 (char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 struct breakpoint* FUNC11 (struct symtab_and_line,int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char**,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14 (struct symtabs_and_lines sals, char **addr_string,
		    struct expression **cond, char **cond_string,
		    enum bptype type, enum bpdisp disposition,
		    int thread, int ignore_count, int from_tty,
		    struct breakpoint *pending_bp)
{
  if (type == bp_hardware_breakpoint)
    {
      int i = FUNC5 ();
      int target_resources_ok = 
	FUNC0 (bp_hardware_breakpoint, 
					    i + sals.nelts, 0);
      if (target_resources_ok == 0)
	FUNC4 ("No hardware breakpoint support in the target.");
      else if (target_resources_ok < 0)
	FUNC4 ("Hardware breakpoints used exceeds limit.");
    }

  /* Now set all the breakpoints.  */
  {
    int i;
    for (i = 0; i < sals.nelts; i++)
      {
	struct breakpoint *b;
	struct symtab_and_line sal = sals.sals[i];

	if (from_tty)
	  FUNC3 (sal.pc, sal.section);
	
	b = FUNC11 (sal, type);
	FUNC10 (breakpoint_count + 1);
	b->number = breakpoint_count;
	b->cond = cond[i];
	b->thread = thread;
	if (addr_string[i])
	  b->addr_string = addr_string[i];
	else
	  /* addr_string has to be used or breakpoint_re_set will delete
	     me.  */
	  FUNC13 (&b->addr_string, "*0x%s", FUNC7 (b->loc->address));
	b->cond_string = cond_string[i];
	b->ignore_count = ignore_count;
	b->enable_state = bp_enabled;
	b->disposition = disposition;
	/* If resolving a pending breakpoint, a check must be made to see if
	   the user has specified a new condition or commands for the 
	   breakpoint.  A new condition will override any condition that was 
	   initially specified with the initial breakpoint command.  */
	if (pending_bp)
	  {
	    char *arg;
	    if (pending_bp->cond_string)
	      {
		arg = pending_bp->cond_string;
		b->cond_string = FUNC9 (arg, FUNC12 (arg));
		b->cond = FUNC8 (&arg, FUNC1 (b->loc->address), 0);
		if (*arg)
		  FUNC4 ("Junk at end of pending breakpoint condition expression");
	      }
	    /* If there are commands associated with the breakpoint, they should 
	       be copied too.  */
	    if (pending_bp->commands)
	      b->commands = FUNC2 (pending_bp->commands);
	    
	    /* We have to copy over the ignore_count and thread as well.  */
	    b->ignore_count = pending_bp->ignore_count;
	    b->thread = pending_bp->thread;
	  }
	FUNC6 (b);
      }
  }    
}