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
typedef  int uint32_t ;
struct smsm_shared {int state; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  ID_SHARED_STATE ; 
 int MSM_SMSM_DEBUG ; 
 int SMSM_RESET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int msm_smd_debug_mask ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 struct smsm_shared* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  smem_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC7(uint32_t clear_mask, uint32_t set_mask)
{
	unsigned long flags;
	struct smsm_shared *smsm;

	FUNC5(&smem_lock, flags);

	smsm = FUNC4(ID_SHARED_STATE,
			  2 * sizeof(struct smsm_shared));

	if (smsm) {
		if (smsm[1].state & SMSM_RESET)
			FUNC0();
		smsm[0].state = (smsm[0].state & ~clear_mask) | set_mask;
		if (msm_smd_debug_mask & MSM_SMSM_DEBUG)
			FUNC3("smsm_change_state %x\n",
			       smsm[0].state);
		FUNC1();
	}

	FUNC6(&smem_lock, flags);

	if (smsm == NULL) {
		FUNC2("smsm_change_state <SM NO STATE>\n");
		return -EIO;
	}
	return 0;
}