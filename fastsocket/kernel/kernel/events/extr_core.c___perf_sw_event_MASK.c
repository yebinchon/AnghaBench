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
struct pt_regs {int dummy; } ;
struct perf_sample_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_TYPE_SOFTWARE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct perf_sample_data*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_sample_data*,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(u32 event_id, u64 nr, struct pt_regs *regs, u64 addr)
{
	struct perf_sample_data data;
	int rctx;

	FUNC4();
	rctx = FUNC2();
	if (rctx < 0)
		return;

	FUNC1(&data, addr);

	FUNC0(PERF_TYPE_SOFTWARE, event_id, nr, &data, regs);

	FUNC3(rctx);
	FUNC5();
}