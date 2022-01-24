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
struct address_info {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct address_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct address_info*) ; 

void FUNC3(struct address_info *hw_config)
{
#if defined(CONFIG_SOUND_MPU401)
	if (!strcmp (hw_config->name, "ESS1xxx MPU")) {
		unload_mpu401(hw_config);
		return;
	}
#endif
	FUNC2(hw_config);
}