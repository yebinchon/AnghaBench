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
struct breakpoint {TYPE_1__* loc; int /*<<< orphan*/  addr_string; int /*<<< orphan*/  enable_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  address; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  bp_enabled ; 
 int /*<<< orphan*/  bp_thread_event ; 
 struct breakpoint* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

struct breakpoint *
FUNC3 (CORE_ADDR address)
{
  struct breakpoint *b;

  b = FUNC0 (address, bp_thread_event);
  
  b->enable_state = bp_enabled;
  /* addr_string has to be used or breakpoint_re_set will delete me.  */
  FUNC2 (&b->addr_string, "*0x%s", FUNC1 (b->loc->address));

  return b;
}