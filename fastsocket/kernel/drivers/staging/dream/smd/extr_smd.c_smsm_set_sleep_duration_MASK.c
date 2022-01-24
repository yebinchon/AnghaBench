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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int EIO ; 
 int MSM_SMSM_DEBUG ; 
 int /*<<< orphan*/  SMEM_SMSM_SLEEP_DELAY ; 
 int msm_smd_debug_mask ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int) ; 

int FUNC3(uint32_t delay)
{
	uint32_t *ptr;

	ptr = FUNC2(SMEM_SMSM_SLEEP_DELAY, sizeof(*ptr));
	if (ptr == NULL) {
		FUNC0("smsm_set_sleep_duration <SM NO SLEEP_DELAY>\n");
		return -EIO;
	}
	if (msm_smd_debug_mask & MSM_SMSM_DEBUG)
		FUNC1("smsm_set_sleep_duration %d -> %d\n",
		       *ptr, delay);
	*ptr = delay;
	return 0;
}