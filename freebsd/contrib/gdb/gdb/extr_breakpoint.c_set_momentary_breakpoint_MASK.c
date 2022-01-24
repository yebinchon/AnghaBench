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
struct frame_id {int dummy; } ;
struct breakpoint {int /*<<< orphan*/  thread; struct frame_id frame_id; int /*<<< orphan*/  disposition; int /*<<< orphan*/  enable_state; } ;
typedef  enum bptype { ____Placeholder_bptype } bptype ;

/* Variables and functions */
 int /*<<< orphan*/  bp_enabled ; 
 int /*<<< orphan*/  disp_donttouch ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct breakpoint* FUNC2 (struct symtab_and_line,int) ; 

struct breakpoint *
FUNC3 (struct symtab_and_line sal, struct frame_id frame_id,
			  enum bptype type)
{
  struct breakpoint *b;
  b = FUNC2 (sal, type);
  b->enable_state = bp_enabled;
  b->disposition = disp_donttouch;
  b->frame_id = frame_id;

  /* If we're debugging a multi-threaded program, then we
     want momentary breakpoints to be active in only a 
     single thread of control.  */
  if (FUNC0 (inferior_ptid))
    b->thread = FUNC1 (inferior_ptid);

  return b;
}