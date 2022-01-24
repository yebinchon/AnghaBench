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
struct symtab_and_line {int /*<<< orphan*/  line; int /*<<< orphan*/  section; TYPE_1__* symtab; int /*<<< orphan*/  pc; } ;
struct breakpoint {int type; int thread; struct breakpoint* next; scalar_t__ pending; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * exec_pathname; scalar_t__ forked_inferior_pid; int /*<<< orphan*/ * triggered_dll_pathname; int /*<<< orphan*/ * dll_pathname; int /*<<< orphan*/  frame_id; int /*<<< orphan*/ * commands; scalar_t__ ignore_count; scalar_t__ silent; int /*<<< orphan*/  enable_state; int /*<<< orphan*/  line_number; int /*<<< orphan*/  input_radix; int /*<<< orphan*/  language; TYPE_3__* loc; int /*<<< orphan*/ * source_file; } ;
typedef  enum bptype { ____Placeholder_bptype } bptype ;
struct TYPE_6__ {int /*<<< orphan*/  section; int /*<<< orphan*/  requested_address; int /*<<< orphan*/  address; } ;
struct TYPE_5__ {int /*<<< orphan*/  la_language; } ;
struct TYPE_4__ {int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (struct breakpoint*,int) ; 
 int /*<<< orphan*/  bp_enabled ; 
 struct breakpoint* breakpoint_chain ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct breakpoint*) ; 
 TYPE_2__* current_language ; 
 int /*<<< orphan*/  input_radix ; 
 int /*<<< orphan*/  FUNC4 (struct breakpoint*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  null_frame_id ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

struct breakpoint *
FUNC8 (struct symtab_and_line sal, enum bptype bptype)
{
  struct breakpoint *b, *b1;

  b = (struct breakpoint *) FUNC7 (sizeof (struct breakpoint));
  FUNC4 (b, 0, sizeof (*b));
  b->loc = FUNC1 (b, bptype);
  b->loc->requested_address = sal.pc;
  b->loc->address = FUNC0 (b->loc->requested_address);
  if (sal.symtab == NULL)
    b->source_file = NULL;
  else
    b->source_file = FUNC5 (sal.symtab->filename,
				 FUNC6 (sal.symtab->filename));
  b->loc->section = sal.section;
  b->type = bptype;
  b->language = current_language->la_language;
  b->input_radix = input_radix;
  b->thread = -1;
  b->line_number = sal.line;
  b->enable_state = bp_enabled;
  b->next = 0;
  b->silent = 0;
  b->ignore_count = 0;
  b->commands = NULL;
  b->frame_id = null_frame_id;
  b->dll_pathname = NULL;
  b->triggered_dll_pathname = NULL;
  b->forked_inferior_pid = 0;
  b->exec_pathname = NULL;
  b->ops = NULL;
  b->pending = 0;

  /* Add this breakpoint to the end of the chain
     so that a list of breakpoints will come out in order
     of increasing numbers.  */

  b1 = breakpoint_chain;
  if (b1 == 0)
    breakpoint_chain = b;
  else
    {
      while (b1->next)
	b1 = b1->next;
      b1->next = b;
    }

  FUNC3 (b);
  FUNC2 ();

  return b;
}