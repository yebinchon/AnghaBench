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
struct TYPE_2__ {double period_ratio_delta; double period_ratio; scalar_t__ wdiff; } ;
struct hist_entry {TYPE_1__ diff; } ;
typedef  scalar_t__ s64 ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  COMPUTE_DELTA 130 
#define  COMPUTE_RATIO 129 
#define  COMPUTE_WEIGHTED_DIFF 128 
 scalar_t__ FUNC1 (double,double) ; 

__attribute__((used)) static int64_t
FUNC2(struct hist_entry *left, struct hist_entry *right,
			int c)
{
	switch (c) {
	case COMPUTE_DELTA:
	{
		double l = left->diff.period_ratio_delta;
		double r = right->diff.period_ratio_delta;

		return FUNC1(l, r);
	}
	case COMPUTE_RATIO:
	{
		double l = left->diff.period_ratio;
		double r = right->diff.period_ratio;

		return FUNC1(l, r);
	}
	case COMPUTE_WEIGHTED_DIFF:
	{
		s64 l = left->diff.wdiff;
		s64 r = right->diff.wdiff;

		return r - l;
	}
	default:
		FUNC0(1);
	}

	return 0;
}