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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  cycle_t ;
struct TYPE_2__ {int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 TYPE_1__ global_trace ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

cycle_t FUNC3(int cpu)
{
	u64 ts;

	/* Early boot up does not have a buffer yet */
	if (!global_trace.buffer)
		return FUNC2();

	ts = FUNC1(global_trace.buffer, cpu);
	FUNC0(global_trace.buffer, cpu, &ts);

	return ts;
}