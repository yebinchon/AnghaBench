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
struct vport_percpu_stats {int tx_bytes; int /*<<< orphan*/  sync; int /*<<< orphan*/  tx_packets; } ;
struct vport {int /*<<< orphan*/  percpu_stats; TYPE_1__* ops; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int (* send ) (struct vport*,struct sk_buff*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  VPORT_E_TX_DROPPED ; 
 int /*<<< orphan*/  VPORT_E_TX_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct vport*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vport*,struct sk_buff*) ; 
 struct vport_percpu_stats* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct vport *vport, struct sk_buff *skb)
{
	int sent = vport->ops->send(vport, skb);

	if (FUNC1(sent > 0)) {
		struct vport_percpu_stats *stats;

		stats = FUNC4(vport->percpu_stats);

		FUNC5(&stats->sync);
		stats->tx_packets++;
		stats->tx_bytes += sent;
		FUNC6(&stats->sync);
	} else if (sent < 0) {
		FUNC2(vport, VPORT_E_TX_ERROR);
		FUNC0(skb);
	} else
		FUNC2(vport, VPORT_E_TX_DROPPED);

	return sent;
}