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
struct o2hb_region {int /*<<< orphan*/  hr_item; } ;

/* Variables and functions */
 struct o2hb_region* FUNC0 (char const*) ; 
 int /*<<< orphan*/  o2hb_live_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(const char *region_uuid)
{
	struct o2hb_region *reg;

	FUNC3(&o2hb_live_lock);

	reg = FUNC0(region_uuid);

	FUNC4(&o2hb_live_lock);

	if (reg) {
		FUNC1(&reg->hr_item);
		FUNC2();
	}
}