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
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  COMPUTE_DELTA 130 
#define  COMPUTE_RATIO 129 
#define  COMPUTE_WEIGHTED_DIFF 128 
 int /*<<< orphan*/  PERF_HPP__BASELINE ; 
 int /*<<< orphan*/  PERF_HPP__DELTA ; 
 int /*<<< orphan*/  PERF_HPP__DISPL ; 
 int /*<<< orphan*/  PERF_HPP__FORMULA ; 
 int /*<<< orphan*/  PERF_HPP__OVERHEAD ; 
 int /*<<< orphan*/  PERF_HPP__PERIOD ; 
 int /*<<< orphan*/  PERF_HPP__PERIOD_BASELINE ; 
 int /*<<< orphan*/  PERF_HPP__RATIO ; 
 int /*<<< orphan*/  PERF_HPP__WEIGHTED_DIFF ; 
 int compute ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ show_displacement ; 
 scalar_t__ show_formula ; 
 scalar_t__ show_period ; 

__attribute__((used)) static void FUNC3(void)
{
	FUNC2();

	/* No overhead column. */
	FUNC1(PERF_HPP__OVERHEAD, false);

	/*
	 * Display baseline/delta/ratio/displacement/
	 * formula/periods columns.
	 */
	FUNC1(PERF_HPP__BASELINE, true);

	switch (compute) {
	case COMPUTE_DELTA:
		FUNC1(PERF_HPP__DELTA, true);
		break;
	case COMPUTE_RATIO:
		FUNC1(PERF_HPP__RATIO, true);
		break;
	case COMPUTE_WEIGHTED_DIFF:
		FUNC1(PERF_HPP__WEIGHTED_DIFF, true);
		break;
	default:
		FUNC0(1);
	};

	if (show_displacement)
		FUNC1(PERF_HPP__DISPL, true);

	if (show_formula)
		FUNC1(PERF_HPP__FORMULA, true);

	if (show_period) {
		FUNC1(PERF_HPP__PERIOD, true);
		FUNC1(PERF_HPP__PERIOD_BASELINE, true);
	}
}