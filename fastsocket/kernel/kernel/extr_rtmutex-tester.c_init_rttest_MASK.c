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
struct TYPE_2__ {int /*<<< orphan*/  sysdev; } ;

/* Variables and functions */
 int MAX_RT_TEST_MUTEXES ; 
 int MAX_RT_TEST_THREADS ; 
 int /*<<< orphan*/  attr_command ; 
 int /*<<< orphan*/  attr_status ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/ * mutexes ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rttest_lock ; 
 int /*<<< orphan*/  rttest_sysclass ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* thread_data ; 

__attribute__((used)) static int FUNC6(void)
{
	int ret, i;

	FUNC3(&rttest_lock);

	for (i = 0; i < MAX_RT_TEST_MUTEXES; i++)
		FUNC2(&mutexes[i]);

	ret = FUNC4(&rttest_sysclass);
	if (ret)
		return ret;

	for (i = 0; i < MAX_RT_TEST_THREADS; i++) {
		ret = FUNC0(i);
		if (ret)
			break;
		ret = FUNC5(&thread_data[i].sysdev, &attr_status);
		if (ret)
			break;
		ret = FUNC5(&thread_data[i].sysdev, &attr_command);
		if (ret)
			break;
	}

	FUNC1("Initializing RT-Tester: %s\n", ret ? "Failed" : "OK" );

	return ret;
}