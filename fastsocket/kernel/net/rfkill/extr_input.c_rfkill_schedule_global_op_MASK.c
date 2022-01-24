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
typedef  enum rfkill_sched_op { ____Placeholder_rfkill_sched_op } rfkill_sched_op ;

/* Variables and functions */
 int RFKILL_GLOBAL_OP_EPO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  rfkill_last_scheduled ; 
 int rfkill_op ; 
 int /*<<< orphan*/  rfkill_op_lock ; 
 int rfkill_op_pending ; 
 int /*<<< orphan*/  rfkill_op_work ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(enum rfkill_sched_op op)
{
	unsigned long flags;

	FUNC4(&rfkill_op_lock, flags);
	rfkill_op = op;
	rfkill_op_pending = true;
	if (op == RFKILL_GLOBAL_OP_EPO && !FUNC1()) {
		/* bypass the limiter for EPO */
		FUNC0(&rfkill_op_work);
		FUNC3(&rfkill_op_work, 0);
		rfkill_last_scheduled = jiffies;
	} else
		FUNC2();
	FUNC5(&rfkill_op_lock, flags);
}