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
typedef  int /*<<< orphan*/  u64 ;
struct ieee80211_local {unsigned int filter_flags; int /*<<< orphan*/  filter_lock; int /*<<< orphan*/  mc_list; int /*<<< orphan*/  mc_count; scalar_t__ fif_pspoll; scalar_t__ fif_other_bss; scalar_t__ fif_control; scalar_t__ fif_plcpfail; scalar_t__ fif_fcsfail; scalar_t__ probe_req_reg; scalar_t__ fif_probe_req; int /*<<< orphan*/  scanning; scalar_t__ monitors; int /*<<< orphan*/  iff_allmultis; int /*<<< orphan*/  iff_promiscs; } ;

/* Variables and functions */
 unsigned int FIF_ALLMULTI ; 
 unsigned int FIF_BCN_PRBRESP_PROMISC ; 
 unsigned int FIF_CONTROL ; 
 unsigned int FIF_FCSFAIL ; 
 unsigned int FIF_OTHER_BSS ; 
 unsigned int FIF_PLCPFAIL ; 
 unsigned int FIF_PROBE_REQ ; 
 unsigned int FIF_PROMISC_IN_BSS ; 
 unsigned int FIF_PSPOLL ; 
 int /*<<< orphan*/  SCAN_ONCHANNEL_SCANNING ; 
 int /*<<< orphan*/  SCAN_SW_SCANNING ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_local*,unsigned int,unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_local*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(struct ieee80211_local *local)
{
	u64 mc;
	unsigned int changed_flags;
	unsigned int new_flags = 0;

	if (FUNC1(&local->iff_promiscs))
		new_flags |= FIF_PROMISC_IN_BSS;

	if (FUNC1(&local->iff_allmultis))
		new_flags |= FIF_ALLMULTI;

	if (local->monitors || FUNC6(SCAN_SW_SCANNING, &local->scanning) ||
	    FUNC6(SCAN_ONCHANNEL_SCANNING, &local->scanning))
		new_flags |= FIF_BCN_PRBRESP_PROMISC;

	if (local->fif_probe_req || local->probe_req_reg)
		new_flags |= FIF_PROBE_REQ;

	if (local->fif_fcsfail)
		new_flags |= FIF_FCSFAIL;

	if (local->fif_plcpfail)
		new_flags |= FIF_PLCPFAIL;

	if (local->fif_control)
		new_flags |= FIF_CONTROL;

	if (local->fif_other_bss)
		new_flags |= FIF_OTHER_BSS;

	if (local->fif_pspoll)
		new_flags |= FIF_PSPOLL;

	FUNC4(&local->filter_lock);
	changed_flags = local->filter_flags ^ new_flags;

#if 0 /* Not in RHEL */
	mc = drv_prepare_multicast(local, &local->mc_list);
#else
	mc = FUNC3(local, local->mc_count, local->mc_list);
#endif
	FUNC5(&local->filter_lock);

	/* be a bit nasty */
	new_flags |= (1<<31);

	FUNC2(local, changed_flags, &new_flags, mc);

	FUNC0(new_flags & (1<<31));

	local->filter_flags = new_flags & ~(1<<31);
}