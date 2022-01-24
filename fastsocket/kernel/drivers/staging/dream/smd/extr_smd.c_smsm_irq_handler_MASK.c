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
struct smsm_shared {unsigned int state; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ID_SHARED_STATE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int MSM_SMSM_DEBUG ; 
 unsigned int SMSM_INIT ; 
 unsigned int SMSM_RESET ; 
 unsigned int SMSM_RPCINIT ; 
 unsigned int SMSM_SMDINIT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int msm_smd_debug_mask ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 struct smsm_shared* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  smem_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *data)
{
	unsigned long flags;
	struct smsm_shared *smsm;

	FUNC5(&smem_lock, flags);
	smsm = FUNC4(ID_SHARED_STATE,
			  2 * sizeof(struct smsm_shared));

	if (smsm == 0) {
		FUNC3("<SM NO STATE>\n");
	} else {
		unsigned apps = smsm[0].state;
		unsigned modm = smsm[1].state;

		if (msm_smd_debug_mask & MSM_SMSM_DEBUG)
			FUNC3("<SM %08x %08x>\n", apps, modm);
		if (modm & SMSM_RESET) {
			FUNC1();
		} else {
			apps |= SMSM_INIT;
			if (modm & SMSM_SMDINIT)
				apps |= SMSM_SMDINIT;
			if (modm & SMSM_RPCINIT)
				apps |= SMSM_RPCINIT;
		}

		if (smsm[0].state != apps) {
			if (msm_smd_debug_mask & MSM_SMSM_DEBUG)
				FUNC3("<SM %08x NOTIFY>\n", apps);
			smsm[0].state = apps;
			FUNC0();
			FUNC2();
		}
	}
	FUNC6(&smem_lock, flags);
	return IRQ_HANDLED;
}