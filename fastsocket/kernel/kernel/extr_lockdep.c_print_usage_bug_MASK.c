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
struct task_struct {int /*<<< orphan*/  comm; } ;
struct held_lock {int dummy; } ;
typedef  enum lock_usage_bit { ____Placeholder_lock_usage_bit } lock_usage_bit ;
struct TYPE_2__ {int usage_traces; } ;

/* Variables and functions */
 int HARDIRQ_SHIFT ; 
 int SOFTIRQ_SHIFT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ debug_locks_silent ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 TYPE_1__* FUNC3 (struct held_lock*) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct held_lock*) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC12 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC13 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC14 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC15 (struct task_struct*) ; 
 int /*<<< orphan*/ * usage_str ; 

__attribute__((used)) static int
FUNC16(struct task_struct *curr, struct held_lock *this,
		enum lock_usage_bit prev_bit, enum lock_usage_bit new_bit)
{
	if (!FUNC0() || debug_locks_silent)
		return 0;

	FUNC9("\n=================================\n");
	FUNC9(  "[ INFO: inconsistent lock state ]\n");
	FUNC6();
	FUNC9(  "---------------------------------\n");

	FUNC9("inconsistent {%s} -> {%s} usage.\n",
		usage_str[prev_bit], usage_str[new_bit]);

	FUNC9("%s/%d [HC%u[%lu]:SC%u[%lu]:HE%u:SE%u] takes:\n",
		curr->comm, FUNC11(curr),
		FUNC12(curr), FUNC2() >> HARDIRQ_SHIFT,
		FUNC14(curr), FUNC10() >> SOFTIRQ_SHIFT,
		FUNC13(curr),
		FUNC15(curr));
	FUNC7(this);

	FUNC9("{%s} state was registered at:\n", usage_str[prev_bit]);
	FUNC8(FUNC3(this)->usage_traces + prev_bit, 1);

	FUNC5(curr);
	FUNC9("\nother info that might help us debug this:\n");
	FUNC4(curr);

	FUNC9("\nstack backtrace:\n");
	FUNC1();

	return 0;
}