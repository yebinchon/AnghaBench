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
 unsigned int NUM_RFKILL_TYPES ; 
#define  RFKILL_GLOBAL_OP_EPO 131 
#define  RFKILL_GLOBAL_OP_RESTORE 130 
#define  RFKILL_GLOBAL_OP_UNBLOCK 129 
#define  RFKILL_GLOBAL_OP_UNLOCK 128 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int) ; 

__attribute__((used)) static void FUNC5(enum rfkill_sched_op op)
{
	unsigned int i;

	switch (op) {
	case RFKILL_GLOBAL_OP_EPO:
		FUNC1();
		break;
	case RFKILL_GLOBAL_OP_RESTORE:
		FUNC3();
		break;
	case RFKILL_GLOBAL_OP_UNLOCK:
		FUNC2();
		break;
	case RFKILL_GLOBAL_OP_UNBLOCK:
		FUNC2();
		for (i = 0; i < NUM_RFKILL_TYPES; i++)
			FUNC4(i, false);
		break;
	default:
		/* memory corruption or bug, fail safely */
		FUNC1();
		FUNC0(1, "Unknown requested operation %d! "
			"rfkill Emergency Power Off activated\n",
			op);
	}
}