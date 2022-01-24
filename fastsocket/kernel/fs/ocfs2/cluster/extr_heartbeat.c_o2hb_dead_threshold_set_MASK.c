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
 unsigned int O2HB_MIN_DEAD_THRESHOLD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  o2hb_all_regions ; 
 unsigned int o2hb_dead_threshold ; 
 int /*<<< orphan*/  o2hb_live_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(unsigned int threshold)
{
	if (threshold > O2HB_MIN_DEAD_THRESHOLD) {
		FUNC1(&o2hb_live_lock);
		if (FUNC0(&o2hb_all_regions))
			o2hb_dead_threshold = threshold;
		FUNC2(&o2hb_live_lock);
	}
}