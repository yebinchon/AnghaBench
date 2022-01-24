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
struct smsm_interrupt_info {int /*<<< orphan*/  aArm_interrupts_pending; int /*<<< orphan*/  aArm_en_mask; } ;

/* Variables and functions */
 int EIO ; 
 int MSM_SMSM_DEBUG ; 
 int /*<<< orphan*/  SMEM_SMSM_INT_INFO ; 
 int msm_smd_debug_mask ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct smsm_interrupt_info* FUNC2 (int /*<<< orphan*/ ,int) ; 

int FUNC3(struct smsm_interrupt_info *info)
{
	struct smsm_interrupt_info *ptr;

	ptr = FUNC2(SMEM_SMSM_INT_INFO, sizeof(*ptr));
	if (ptr == NULL) {
		FUNC0("smsm_set_sleep_duration <SM NO INT_INFO>\n");
		return -EIO;
	}
	if (msm_smd_debug_mask & MSM_SMSM_DEBUG)
		FUNC1("smsm_set_interrupt_info %x %x -> %x %x\n",
		       ptr->aArm_en_mask, ptr->aArm_interrupts_pending,
		       info->aArm_en_mask, info->aArm_interrupts_pending);
	*ptr = *info;
	return 0;
}