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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct perf_read_values {int /*<<< orphan*/ ** value; } ;

/* Variables and functions */
 int FUNC0 (struct perf_read_values*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC1 (struct perf_read_values*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct perf_read_values *values,
				u32 pid, u32 tid,
				u64 rawid, const char *name, u64 value)
{
	int tindex, cindex;

	tindex = FUNC1(values, pid, tid);
	cindex = FUNC0(values, rawid, name);

	values->value[tindex][cindex] = value;
}