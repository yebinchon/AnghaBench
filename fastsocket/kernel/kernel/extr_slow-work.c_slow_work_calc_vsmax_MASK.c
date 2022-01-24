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
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 
 int FUNC2 (unsigned int,scalar_t__) ; 
 scalar_t__ slow_work_max_threads ; 
 int /*<<< orphan*/  slow_work_thread_count ; 
 unsigned int vslow_work_proportion ; 

__attribute__((used)) static unsigned FUNC3(void)
{
	unsigned vsmax;

	vsmax = FUNC0(&slow_work_thread_count) * vslow_work_proportion;
	vsmax /= 100;
	vsmax = FUNC1(vsmax, 1U);
	return FUNC2(vsmax, slow_work_max_threads - 1);
}