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
struct o2hb_region {int /*<<< orphan*/  hr_write_timeout_work; int /*<<< orphan*/  hr_last_timeout_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  O2HB_MAX_WRITE_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct o2hb_region *reg)
{
	FUNC1(0, "Queue write timeout for %u ms\n", O2HB_MAX_WRITE_TIMEOUT_MS);

	FUNC0(&reg->hr_write_timeout_work);
	reg->hr_last_timeout_start = jiffies;
	FUNC3(&reg->hr_write_timeout_work,
			      FUNC2(O2HB_MAX_WRITE_TIMEOUT_MS));
}