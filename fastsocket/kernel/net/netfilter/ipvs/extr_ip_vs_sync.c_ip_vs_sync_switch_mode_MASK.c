#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ip_vs_sync_mesg {int dummy; } ;
struct ip_vs_sync_buff {TYPE_1__* mesg; } ;
struct TYPE_2__ {int size; } ;

/* Variables and functions */
 int IP_VS_STATE_MASTER ; 
 struct ip_vs_sync_buff* curr_sb ; 
 int /*<<< orphan*/  curr_sb_lock ; 
 int /*<<< orphan*/  FUNC0 (struct ip_vs_sync_buff*) ; 
 int ip_vs_sync_state ; 
 int /*<<< orphan*/  FUNC1 (struct ip_vs_sync_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int sysctl_ip_vs_sync_ver ; 

void FUNC4(int mode) {
	struct ip_vs_sync_buff *sb;

	FUNC2(&curr_sb_lock);
	if (!(ip_vs_sync_state & IP_VS_STATE_MASTER))
		goto unlock;
	sb = curr_sb;
	if (mode == sysctl_ip_vs_sync_ver || !sb)
		goto unlock;

	/* Buffer empty ? then let buf_create do the job  */
	if (sb->mesg->size <= sizeof(struct ip_vs_sync_mesg)) {
		FUNC0(sb);
		curr_sb = NULL;
	} else
		FUNC1(curr_sb);

unlock:
	FUNC3(&curr_sb_lock);
}