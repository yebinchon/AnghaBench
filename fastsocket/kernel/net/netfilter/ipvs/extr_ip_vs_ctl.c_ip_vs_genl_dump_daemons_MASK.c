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
struct sk_buff {int len; } ;
struct netlink_callback {int* args; } ;

/* Variables and functions */
 int IP_VS_STATE_BACKUP ; 
 int IP_VS_STATE_MASTER ; 
 int /*<<< orphan*/  __ip_vs_mutex ; 
 int /*<<< orphan*/  ip_vs_backup_mcast_ifn ; 
 int /*<<< orphan*/  ip_vs_backup_syncid ; 
 scalar_t__ FUNC0 (struct sk_buff*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netlink_callback*) ; 
 int /*<<< orphan*/  ip_vs_master_mcast_ifn ; 
 int /*<<< orphan*/  ip_vs_master_syncid ; 
 int ip_vs_sync_state ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb,
				   struct netlink_callback *cb)
{
	FUNC1(&__ip_vs_mutex);
	if ((ip_vs_sync_state & IP_VS_STATE_MASTER) && !cb->args[0]) {
		if (FUNC0(skb, IP_VS_STATE_MASTER,
					   ip_vs_master_mcast_ifn,
					   ip_vs_master_syncid, cb) < 0)
			goto nla_put_failure;

		cb->args[0] = 1;
	}

	if ((ip_vs_sync_state & IP_VS_STATE_BACKUP) && !cb->args[1]) {
		if (FUNC0(skb, IP_VS_STATE_BACKUP,
					   ip_vs_backup_mcast_ifn,
					   ip_vs_backup_syncid, cb) < 0)
			goto nla_put_failure;

		cb->args[1] = 1;
	}

nla_put_failure:
	FUNC2(&__ip_vs_mutex);

	return skb->len;
}