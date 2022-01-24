#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int id; int /*<<< orphan*/ * cls; } ;
struct TYPE_4__ {TYPE_2__ sysdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  rttest_sysclass ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  test_func ; 
 TYPE_1__* thread_data ; 
 int /*<<< orphan*/ * threads ; 

__attribute__((used)) static int FUNC4(int id)
{
	thread_data[id].sysdev.cls = &rttest_sysclass;
	thread_data[id].sysdev.id = id;

	threads[id] = FUNC2(test_func, &thread_data[id], "rt-test-%d", id);
	if (FUNC0(threads[id]))
		return FUNC1(threads[id]);

	return FUNC3(&thread_data[id].sysdev);
}