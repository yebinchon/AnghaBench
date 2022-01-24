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
typedef  scalar_t__ u64 ;
struct perf_read_values {int counters; scalar_t__* counterrawid; scalar_t__ counters_max; int /*<<< orphan*/ * countername; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_read_values*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

__attribute__((used)) static int FUNC2(struct perf_read_values *values,
					     u64 rawid, const char *name)
{
	int i;

	for (i = 0; i < values->counters; i++)
		if (values->counterrawid[i] == rawid)
			return i;

	if (values->counters == values->counters_max)
		FUNC0(values);

	i = values->counters++;
	values->counterrawid[i] = rawid;
	values->countername[i] = FUNC1(name);

	return i;
}