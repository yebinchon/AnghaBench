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
struct value {int dummy; } ;
struct symtab_and_line {int dummy; } ;
struct frame_info {int dummy; } ;
struct expression {int dummy; } ;
struct breakpoint {struct breakpoint* related_breakpoint; TYPE_1__* loc; void* frame_id; int /*<<< orphan*/  disposition; int /*<<< orphan*/  enable_state; void* watchpoint_frame; void* cond_string; struct expression* cond; struct value* val; void* exp_string; struct block* exp_valid_block; struct expression* exp; scalar_t__ number; } ;
struct block {int dummy; } ;
typedef  enum bptype { ____Placeholder_bptype } bptype ;
struct TYPE_2__ {int /*<<< orphan*/  requested_address; int /*<<< orphan*/  address; } ;

/* Variables and functions */
 int FUNC0 (int,int,int) ; 
 scalar_t__ FUNC1 (struct value*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct frame_info* FUNC3 (struct block*) ; 
 int bp_access_watchpoint ; 
 int /*<<< orphan*/  bp_enabled ; 
 int bp_hardware_watchpoint ; 
 int bp_read_watchpoint ; 
 int bp_watchpoint ; 
 int /*<<< orphan*/  bp_watchpoint_scope ; 
 scalar_t__ breakpoint_count ; 
 int FUNC4 (struct value*) ; 
 struct breakpoint* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  disp_del ; 
 int /*<<< orphan*/  disp_donttouch ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 struct value* FUNC7 (struct expression*) ; 
 void* FUNC8 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct frame_info*) ; 
 struct frame_info* FUNC10 (struct frame_info*) ; 
 int hw_access ; 
 int hw_read ; 
 int FUNC11 (int,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct symtab_and_line*) ; 
 struct block* innermost_block ; 
 int /*<<< orphan*/  FUNC13 (void**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct breakpoint*) ; 
 struct expression* FUNC15 (char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct value*) ; 
 void* FUNC17 (char*,int) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 struct breakpoint* FUNC19 (struct symtab_and_line,int) ; 
 scalar_t__ FUNC20 (char*,char*,int) ; 
 int /*<<< orphan*/  target_has_execution ; 
 int /*<<< orphan*/  FUNC21 (struct value*) ; 
 int /*<<< orphan*/  FUNC22 (struct value*) ; 
 struct value* FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 

__attribute__((used)) static void
FUNC25 (char *arg, int accessflag, int from_tty)
{
  struct breakpoint *b;
  struct symtab_and_line sal;
  struct expression *exp;
  struct block *exp_valid_block;
  struct value *val, *mark;
  struct frame_info *frame;
  struct frame_info *prev_frame = NULL;
  char *exp_start = NULL;
  char *exp_end = NULL;
  char *tok, *end_tok;
  int toklen;
  char *cond_start = NULL;
  char *cond_end = NULL;
  struct expression *cond = NULL;
  int i, other_type_used, target_resources_ok = 0;
  enum bptype bp_type;
  int mem_cnt = 0;

  FUNC12 (&sal);		/* initialize to zeroes */

  /* Parse arguments.  */
  innermost_block = NULL;
  exp_start = arg;
  exp = FUNC15 (&arg, 0, 0);
  exp_end = arg;
  exp_valid_block = innermost_block;
  mark = FUNC23 ();
  val = FUNC7 (exp);
  FUNC16 (val);
  if (FUNC1 (val))
    FUNC21 (val);

  tok = arg;
  while (*tok == ' ' || *tok == '\t')
    tok++;
  end_tok = tok;

  while (*end_tok != ' ' && *end_tok != '\t' && *end_tok != '\000')
    end_tok++;

  toklen = end_tok - tok;
  if (toklen >= 1 && FUNC20 (tok, "if", toklen) == 0)
    {
      tok = cond_start = end_tok + 1;
      cond = FUNC15 (&tok, 0, 0);
      cond_end = tok;
    }
  if (*tok)
    FUNC6 ("Junk at end of command.");

  if (accessflag == hw_read)
    bp_type = bp_read_watchpoint;
  else if (accessflag == hw_access)
    bp_type = bp_access_watchpoint;
  else
    bp_type = bp_hardware_watchpoint;

  mem_cnt = FUNC4 (val);
  if (mem_cnt == 0 && bp_type != bp_hardware_watchpoint)
    FUNC6 ("Expression cannot be implemented with read/access watchpoint.");
  if (mem_cnt != 0)
    {
      i = FUNC11 (bp_type, &other_type_used);
      target_resources_ok = 
	FUNC0 (bp_type, i + mem_cnt, 
					    other_type_used);
      if (target_resources_ok == 0 && bp_type != bp_hardware_watchpoint)
	FUNC6 ("Target does not support this type of hardware watchpoint.");

      if (target_resources_ok < 0 && bp_type != bp_hardware_watchpoint)
	FUNC6 ("Target can only support one kind of HW watchpoint at a time.");
    }

#if defined(HPUXHPPA)
  /*  On HP-UX if you set a h/w
     watchpoint before the "run" command, the inferior dies with a e.g.,
     SIGILL once you start it.  I initially believed this was due to a
     bad interaction between page protection traps and the initial
     startup sequence by the dynamic linker.

     However, I tried avoiding that by having HP-UX's implementation of
     TARGET_CAN_USE_HW_WATCHPOINT return FALSE if there was no inferior_ptid
     yet, which forced slow watches before a "run" or "attach", and it
     still fails somewhere in the startup code.

     Until I figure out what's happening, I'm disallowing watches altogether
     before the "run" or "attach" command.  We'll tell the user they must
     set watches after getting the program started. */
  if (!target_has_execution)
    {
      warning ("can't do that without a running program; try \"break main\", \"run\" first");
      return;
    }
#endif /* HPUXHPPA */

  /* Change the type of breakpoint to an ordinary watchpoint if a hardware
     watchpoint could not be set.  */
  if (!mem_cnt || target_resources_ok <= 0)
    bp_type = bp_watchpoint;

  /* Now set up the breakpoint.  */
  b = FUNC19 (sal, bp_type);
  FUNC18 (breakpoint_count + 1);
  b->number = breakpoint_count;
  b->disposition = disp_donttouch;
  b->exp = exp;
  b->exp_valid_block = exp_valid_block;
  b->exp_string = FUNC17 (exp_start, exp_end - exp_start);
  b->val = val;
  b->cond = cond;
  if (cond_start)
    b->cond_string = FUNC17 (cond_start, cond_end - cond_start);
  else
    b->cond_string = 0;

  frame = FUNC3 (exp_valid_block);
  if (frame)
    {
      prev_frame = FUNC10 (frame);
      b->watchpoint_frame = FUNC8 (frame);
    }
  else
    {
      FUNC13 (&b->watchpoint_frame, 0, sizeof (b->watchpoint_frame));
    }

  /* If the expression is "local", then set up a "watchpoint scope"
     breakpoint at the point where we've left the scope of the watchpoint
     expression.  */
  if (innermost_block)
    {
      if (prev_frame)
	{
	  struct breakpoint *scope_breakpoint;
	  scope_breakpoint = FUNC5 (FUNC9 (prev_frame),
							 bp_watchpoint_scope);

	  scope_breakpoint->enable_state = bp_enabled;

	  /* Automatically delete the breakpoint when it hits.  */
	  scope_breakpoint->disposition = disp_del;

	  /* Only break in the proper frame (help with recursion).  */
	  scope_breakpoint->frame_id = FUNC8 (prev_frame);

	  /* Set the address at which we will stop.  */
	  scope_breakpoint->loc->requested_address
	    = FUNC9 (prev_frame);
	  scope_breakpoint->loc->address
	    = FUNC2 (scope_breakpoint->loc->requested_address);

	  /* The scope breakpoint is related to the watchpoint.  We
	     will need to act on them together.  */
	  b->related_breakpoint = scope_breakpoint;
	}
    }
  FUNC22 (mark);
  FUNC14 (b);
}