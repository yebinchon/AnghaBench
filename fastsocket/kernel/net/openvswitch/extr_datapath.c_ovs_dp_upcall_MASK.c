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
struct sk_buff {int dummy; } ;
struct dp_upcall_info {scalar_t__ pid; } ;
struct dp_stats_percpu {int /*<<< orphan*/  sync; int /*<<< orphan*/  n_lost; } ;
struct datapath {int /*<<< orphan*/  stats_percpu; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOTCONN ; 
 int FUNC0 (struct datapath*) ; 
 int /*<<< orphan*/  FUNC1 (struct datapath*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,struct sk_buff*,struct dp_upcall_info const*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,struct sk_buff*,struct dp_upcall_info const*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct dp_stats_percpu* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct datapath *dp, struct sk_buff *skb,
		  const struct dp_upcall_info *upcall_info)
{
	struct dp_stats_percpu *stats;
	int dp_ifindex;
	int err;

	if (upcall_info->pid == 0) {
		err = -ENOTCONN;
		goto err;
	}

	dp_ifindex = FUNC0(dp);
	if (!dp_ifindex) {
		err = -ENODEV;
		goto err;
	}

	if (!FUNC4(skb))
		err = FUNC3(FUNC1(dp), dp_ifindex, skb, upcall_info);
	else
		err = FUNC2(FUNC1(dp), dp_ifindex, skb, upcall_info);
	if (err)
		goto err;

	return 0;

err:
	stats = FUNC5(dp->stats_percpu);

	FUNC6(&stats->sync);
	stats->n_lost++;
	FUNC7(&stats->sync);

	return err;
}