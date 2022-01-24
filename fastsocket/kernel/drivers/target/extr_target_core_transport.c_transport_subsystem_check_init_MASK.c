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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*) ; 

void FUNC2(void)
{
	int ret;
	static int sub_api_initialized;

	if (sub_api_initialized)
		return;

	ret = FUNC1("target_core_iblock");
	if (ret != 0)
		FUNC0("Unable to load target_core_iblock\n");

	ret = FUNC1("target_core_file");
	if (ret != 0)
		FUNC0("Unable to load target_core_file\n");

	ret = FUNC1("target_core_pscsi");
	if (ret != 0)
		FUNC0("Unable to load target_core_pscsi\n");

	sub_api_initialized = 1;
}