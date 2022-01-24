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
struct ip_vs_sync_buff {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPVS_SYNC_SEND_DELAY ; 
 scalar_t__ IPVS_SYNC_WAKEUP_RATE ; 
 int IP_VS_STATE_MASTER ; 
 int /*<<< orphan*/  ip_vs_master_wakeup_work ; 
 int /*<<< orphan*/  FUNC0 (struct ip_vs_sync_buff*) ; 
 int /*<<< orphan*/  ip_vs_sync_lock ; 
 int /*<<< orphan*/  ip_vs_sync_queue ; 
 scalar_t__ ip_vs_sync_queue_delay ; 
 scalar_t__ ip_vs_sync_queue_len ; 
 int ip_vs_sync_state ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sync_master_thread ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC8(struct ip_vs_sync_buff *sb)
{
	FUNC4(&ip_vs_sync_lock);
	if (ip_vs_sync_state & IP_VS_STATE_MASTER &&
	    ip_vs_sync_queue_len < FUNC6()) {
		if (!ip_vs_sync_queue_len)
			FUNC3(&ip_vs_master_wakeup_work,
					      FUNC2(IPVS_SYNC_SEND_DELAY, 1));
		ip_vs_sync_queue_len++;
		FUNC1(&sb->list, &ip_vs_sync_queue);
		if ((++ip_vs_sync_queue_delay) == IPVS_SYNC_WAKEUP_RATE)
			FUNC7(sync_master_thread);
	} else
		FUNC0(sb);
	FUNC5(&ip_vs_sync_lock);
}