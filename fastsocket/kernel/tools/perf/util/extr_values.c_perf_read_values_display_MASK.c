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
struct perf_read_values {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct perf_read_values*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct perf_read_values*) ; 

void FUNC2(FILE *fp, struct perf_read_values *values, int raw)
{
	if (raw)
		FUNC1(fp, values);
	else
		FUNC0(fp, values);
}