#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; } ;
struct TYPE_4__ {int /*<<< orphan*/  expires; } ;
struct net_bridge_port_group {TYPE_1__ timer; struct net_bridge_port_group* next; } ;
struct net_bridge_port {scalar_t__ state; } ;
struct net_bridge_mdb_entry {int timer_armed; struct net_bridge_port_group* ports; TYPE_1__ timer; scalar_t__ mglist; } ;
struct net_bridge {unsigned long multicast_membership_interval; unsigned long multicast_last_member_count; int /*<<< orphan*/  multicast_lock; int /*<<< orphan*/  mdb; int /*<<< orphan*/  dev; } ;
struct iphdr {int /*<<< orphan*/  saddr; } ;
struct igmpv3_query {scalar_t__ code; scalar_t__ nsrcs; } ;
struct igmphdr {int code; scalar_t__ group; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 scalar_t__ BR_STATE_DISABLED ; 
 int EINVAL ; 
 int HZ ; 
 int FUNC0 (scalar_t__) ; 
 int IGMP_TIMER_SCALE ; 
 struct net_bridge_mdb_entry* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct net_bridge*,struct net_bridge_port*,int) ; 
 struct igmphdr* FUNC3 (struct sk_buff*) ; 
 struct igmpv3_query* FUNC4 (struct sk_buff*) ; 
 struct iphdr* FUNC5 (struct sk_buff*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC12 (TYPE_1__*) ; 
 scalar_t__ FUNC13 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC14(struct net_bridge *br,
				  struct net_bridge_port *port,
				  struct sk_buff *skb)
{
	struct iphdr *iph = FUNC5(skb);
	struct igmphdr *ih = FUNC3(skb);
	struct net_bridge_mdb_entry *mp;
	struct igmpv3_query *ih3;
	struct net_bridge_port_group *p;
	struct net_bridge_port_group **pp;
	unsigned long max_delay;
	unsigned long now = jiffies;
	__be32 group;
	int err = 0;

	FUNC9(&br->multicast_lock);
	if (!FUNC7(br->dev) ||
	    (port && port->state == BR_STATE_DISABLED))
		goto out;

	FUNC2(br, port, !!iph->saddr);

	group = ih->group;

	if (skb->len == sizeof(*ih)) {
		max_delay = ih->code * (HZ / IGMP_TIMER_SCALE);

		if (!max_delay) {
			max_delay = 10 * HZ;
			group = 0;
		}
	} else {
		if (!FUNC8(skb, sizeof(struct igmpv3_query))) {
			err = -EINVAL;
			goto out;
		}

		ih3 = FUNC4(skb);
		if (ih3->nsrcs)
			goto out;

		max_delay = ih3->code ? 1 :
			    FUNC0(ih3->code) * (HZ / IGMP_TIMER_SCALE);
	}

	if (!group)
		goto out;

	mp = FUNC1(br->mdb, group);
	if (!mp)
		goto out;

	FUNC6(&mp->timer, now + br->multicast_membership_interval);
	mp->timer_armed = true;

	max_delay *= br->multicast_last_member_count;

	if (mp->mglist &&
	    (FUNC12(&mp->timer) ?
	     FUNC11(mp->timer.expires, now + max_delay) :
	     FUNC13(&mp->timer) >= 0))
		FUNC6(&mp->timer, now + max_delay);

	for (pp = &mp->ports; (p = *pp); pp = &p->next) {
		if (FUNC12(&p->timer) ?
		    FUNC11(p->timer.expires, now + max_delay) :
		    FUNC13(&p->timer) >= 0)
			FUNC6(&p->timer, now + max_delay);
	}

out:
	FUNC10(&br->multicast_lock);
	return err;
}