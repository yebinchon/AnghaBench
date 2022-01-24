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
struct sk_buff {struct net_device* dev; } ;
struct packet_type {int dummy; } ;
struct net_device {scalar_t__ type; } ;
struct elapaarp {scalar_t__ hw_len; scalar_t__ pa_len; int pa_src_node; scalar_t__ pa_src_net; scalar_t__ pa_dst_node; scalar_t__ pa_dst_net; int /*<<< orphan*/  hw_src; scalar_t__ pa_dst_zero; scalar_t__ pa_src_zero; int /*<<< orphan*/  function; } ;
struct atalk_addr {int s_node; scalar_t__ s_net; } ;
struct atalk_iface {int status; struct atalk_addr address; } ;
struct aarp_entry {int status; int /*<<< orphan*/  expires_at; int /*<<< orphan*/  hwaddr; struct net_device* dev; } ;
typedef  int __u16 ;

/* Variables and functions */
 int AARP_HASH_SIZE ; 
 scalar_t__ AARP_PA_ALEN ; 
#define  AARP_PROBE 130 
#define  AARP_REPLY 129 
#define  AARP_REQUEST 128 
 scalar_t__ ARPHRD_ETHER ; 
 int ATIF_PROBE ; 
 int ATIF_PROBE_FAIL ; 
 scalar_t__ ETH_ALEN ; 
 struct aarp_entry* FUNC0 (int /*<<< orphan*/ ,struct net_device*,struct atalk_addr*) ; 
 struct atalk_addr* FUNC1 (struct net_device*,struct atalk_addr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct aarp_entry*,int) ; 
 struct elapaarp* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  aarp_lock ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,struct atalk_addr*,struct atalk_addr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aarp_timer ; 
 struct atalk_iface* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  init_net ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * proxies ; 
 int /*<<< orphan*/ * resolved ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 scalar_t__ sysctl_aarp_expiry_time ; 
 scalar_t__ sysctl_aarp_tick_time ; 
 int /*<<< orphan*/ * unresolved ; 
 int /*<<< orphan*/  unresolved_count ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct sk_buff *skb, struct net_device *dev,
		    struct packet_type *pt, struct net_device *orig_dev)
{
	struct elapaarp *ea = FUNC3(skb);
	int hash, ret = 0;
	__u16 function;
	struct aarp_entry *a;
	struct atalk_addr sa, *ma, da;
	struct atalk_iface *ifa;

	if (!FUNC10(FUNC6(dev), &init_net))
		goto out0;

	/* We only do Ethernet SNAP AARP. */
	if (dev->type != ARPHRD_ETHER)
		goto out0;

	/* Frame size ok? */
	if (!FUNC12(skb, sizeof(*ea)))
		goto out0;

	function = FUNC11(ea->function);

	/* Sanity check fields. */
	if (function < AARP_REQUEST || function > AARP_PROBE ||
	    ea->hw_len != ETH_ALEN || ea->pa_len != AARP_PA_ALEN ||
	    ea->pa_src_zero || ea->pa_dst_zero)
		goto out0;

	/* Looks good. */
	hash = ea->pa_src_node % (AARP_HASH_SIZE - 1);

	/* Build an address. */
	sa.s_node = ea->pa_src_node;
	sa.s_net = ea->pa_src_net;

	/* Process the packet. Check for replies of me. */
	ifa = FUNC5(dev);
	if (!ifa)
		goto out1;

	if (ifa->status & ATIF_PROBE &&
	    ifa->address.s_node == ea->pa_dst_node &&
	    ifa->address.s_net == ea->pa_dst_net) {
		ifa->status |= ATIF_PROBE_FAIL; /* Fail the probe (in use) */
		goto out1;
	}

	/* Check for replies of proxy AARP entries */
	da.s_node = ea->pa_dst_node;
	da.s_net  = ea->pa_dst_net;

	FUNC13(&aarp_lock);
	a = FUNC0(proxies[hash], dev, &da);

	if (a && a->status & ATIF_PROBE) {
		a->status |= ATIF_PROBE_FAIL;
		/*
		 * we do not respond to probe or request packets for
		 * this address while we are probing this address
		 */
		goto unlock;
	}

	switch (function) {
		case AARP_REPLY:
			if (!unresolved_count)	/* Speed up */
				break;

			/* Find the entry.  */
			a = FUNC0(unresolved[hash], dev, &sa);
			if (!a || dev != a->dev)
				break;

			/* We can fill one in - this is good. */
			FUNC8(a->hwaddr, ea->hw_src, ETH_ALEN);
			FUNC2(&unresolved[hash], a, hash);
			if (!unresolved_count)
				FUNC9(&aarp_timer,
					  jiffies + sysctl_aarp_expiry_time);
			break;

		case AARP_REQUEST:
		case AARP_PROBE:

			/*
			 * If it is my address set ma to my address and reply.
			 * We can treat probe and request the same.  Probe
			 * simply means we shouldn't cache the querying host,
			 * as in a probe they are proposing an address not
			 * using one.
			 *
			 * Support for proxy-AARP added. We check if the
			 * address is one of our proxies before we toss the
			 * packet out.
			 */

			sa.s_node = ea->pa_dst_node;
			sa.s_net  = ea->pa_dst_net;

			/* See if we have a matching proxy. */
			ma = FUNC1(dev, &sa);
			if (!ma)
				ma = &ifa->address;
			else { /* We need to make a copy of the entry. */
				da.s_node = sa.s_node;
				da.s_net = da.s_net;
				ma = &da;
			}

			if (function == AARP_PROBE) {
				/*
				 * A probe implies someone trying to get an
				 * address. So as a precaution flush any
				 * entries we have for this address.
				 */
				a = FUNC0(resolved[sa.s_node %
							  (AARP_HASH_SIZE - 1)],
						      skb->dev, &sa);

				/*
				 * Make it expire next tick - that avoids us
				 * getting into a probe/flush/learn/probe/
				 * flush/learn cycle during probing of a slow
				 * to respond host addr.
				 */
				if (a) {
					a->expires_at = jiffies - 1;
					FUNC9(&aarp_timer, jiffies +
							sysctl_aarp_tick_time);
				}
			}

			if (sa.s_node != ma->s_node)
				break;

			if (sa.s_net && ma->s_net && sa.s_net != ma->s_net)
				break;

			sa.s_node = ea->pa_src_node;
			sa.s_net = ea->pa_src_net;

			/* aarp_my_address has found the address to use for us.
			*/
			FUNC4(dev, ma, &sa, ea->hw_src);
			break;
	}

unlock:
	FUNC14(&aarp_lock);
out1:
	ret = 1;
out0:
	FUNC7(skb);
	return ret;
}