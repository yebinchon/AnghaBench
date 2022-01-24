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
struct TYPE_2__ {int /*<<< orphan*/  (* sync ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FULLSTOP_DONTSTOP ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__* cur_ops ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ fullstop ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  rand ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static int
FUNC10(void *arg)
{
	FUNC0(rand);

	FUNC1("rcu_torture_fakewriter task started");
	FUNC7(current, 19);

	do {
		FUNC6(1 + FUNC3(&rand)%10);
		FUNC9(FUNC3(&rand) & 0x3ff);
		cur_ops->sync();
		FUNC4("rcu_torture_fakewriter");
	} while (!FUNC2() && fullstop == FULLSTOP_DONTSTOP);

	FUNC1("rcu_torture_fakewriter task stopping");
	FUNC5("rcu_torture_fakewriter");
	while (!FUNC2())
		FUNC6(1);
	return 0;
}