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
struct hrtimer {int dummy; } ;
typedef  enum hrtimer_restart { ____Placeholder_hrtimer_restart } hrtimer_restart ;

/* Variables and functions */
 int HRTIMER_RESTART ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct hrtimer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sample_period ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum hrtimer_restart FUNC5(struct hrtimer *hrtimer)
{
	/* trace here */
	FUNC4(FUNC0(), FUNC3());

	FUNC1(hrtimer, FUNC2(sample_period));

	return HRTIMER_RESTART;
}