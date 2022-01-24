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

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int stutter ; 
 int stutter_pause_test ; 

__attribute__((used)) static int
FUNC4(void *arg)
{
	FUNC0("rcu_torture_stutter task started");
	do {
		FUNC3(stutter * HZ);
		stutter_pause_test = 1;
		if (!FUNC1())
			FUNC3(stutter * HZ);
		stutter_pause_test = 0;
		FUNC2("rcu_torture_stutter");
	} while (!FUNC1());
	FUNC0("rcu_torture_stutter task stopping");
	return 0;
}