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
struct pmu {scalar_t__ type; int /*<<< orphan*/  dev; int /*<<< orphan*/  pmu_disable_count; int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 scalar_t__ PERF_TYPE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pmu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pmu_idr ; 
 int /*<<< orphan*/  pmus_lock ; 
 int /*<<< orphan*/  pmus_srcu ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct pmu *pmu)
{
	FUNC5(&pmus_lock);
	FUNC4(&pmu->entry);
	FUNC6(&pmus_lock);

	/*
	 * We dereference the pmu list under both SRCU and regular RCU, so
	 * synchronize against both of those.
	 */
	FUNC9(&pmus_srcu);
	FUNC8();

	FUNC1(pmu->pmu_disable_count);
	if (pmu->type >= PERF_TYPE_MAX)
		FUNC3(&pmu_idr, pmu->type);
	FUNC0(pmu->dev);
	FUNC7(pmu->dev);
	FUNC2(pmu);
}