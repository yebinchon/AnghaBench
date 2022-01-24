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
struct vport_percpu_stats {int /*<<< orphan*/  sync; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct vport {int /*<<< orphan*/  percpu_stats; } ;
struct sk_buff {scalar_t__ len; } ;
struct ovs_key_ipv4_tunnel {int dummy; } ;
struct TYPE_2__ {struct ovs_key_ipv4_tunnel* tun_key; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct vport*,struct sk_buff*) ; 
 struct vport_percpu_stats* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct vport *vport, struct sk_buff *skb,
		       struct ovs_key_ipv4_tunnel *tun_key)
{
	struct vport_percpu_stats *stats;

	stats = FUNC2(vport->percpu_stats);
	FUNC3(&stats->sync);
	stats->rx_packets++;
	stats->rx_bytes += skb->len;
	FUNC4(&stats->sync);

	FUNC0(skb)->tun_key = tun_key;
	FUNC1(vport, skb);
}