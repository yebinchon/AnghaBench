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
struct backing_dev_info {int /*<<< orphan*/  completions; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct backing_dev_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,long*,long*) ; 
 int /*<<< orphan*/  vm_completions ; 

__attribute__((used)) static void FUNC2(struct backing_dev_info *bdi,
		long *numerator, long *denominator)
{
	if (FUNC0(bdi)) {
		FUNC1(&vm_completions, &bdi->completions,
				numerator, denominator);
	} else {
		*numerator = 0;
		*denominator = 1;
	}
}