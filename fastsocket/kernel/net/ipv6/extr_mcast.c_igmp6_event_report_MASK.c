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
struct sk_buff {scalar_t__ pkt_type; int /*<<< orphan*/  dev; } ;
struct mld_msg {int /*<<< orphan*/  mld_mca; } ;
struct inet6_dev {int /*<<< orphan*/  lock; struct ifmcaddr6* mc_list; } ;
struct ifmcaddr6 {int mca_flags; int /*<<< orphan*/  mca_lock; int /*<<< orphan*/  mca_refcnt; int /*<<< orphan*/  mca_timer; int /*<<< orphan*/  mca_addr; struct ifmcaddr6* next; } ;
struct icmp6hdr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int IPV6_ADDR_ANY ; 
 int IPV6_ADDR_LINKLOCAL ; 
 int MAF_LAST_REPORTER ; 
 int MAF_TIMER_RUNNING ; 
 scalar_t__ PACKET_BROADCAST ; 
 scalar_t__ PACKET_LOOPBACK ; 
 scalar_t__ PACKET_MULTICAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 struct inet6_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inet6_dev*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(struct sk_buff *skb)
{
	struct ifmcaddr6 *ma;
	struct inet6_dev *idev;
	struct mld_msg *mld;
	int addr_type;

	/* Our own report looped back. Ignore it. */
	if (skb->pkt_type == PACKET_LOOPBACK)
		return 0;

	/* send our report if the MC router may not have heard this report */
	if (skb->pkt_type != PACKET_MULTICAST &&
	    skb->pkt_type != PACKET_BROADCAST)
		return 0;

	if (!FUNC8(skb, sizeof(*mld) - sizeof(struct icmp6hdr)))
		return -EINVAL;

	mld = (struct mld_msg *)FUNC2(skb);

	/* Drop reports with not link local source */
	addr_type = FUNC6(&FUNC7(skb)->saddr);
	if (addr_type != IPV6_ADDR_ANY &&
	    !(addr_type&IPV6_ADDR_LINKLOCAL))
		return -EINVAL;

	idev = FUNC3(skb->dev);
	if (idev == NULL)
		return -ENODEV;

	/*
	 *	Cancel the timer for this group
	 */

	FUNC9(&idev->lock);
	for (ma = idev->mc_list; ma; ma=ma->next) {
		if (FUNC5(&ma->mca_addr, &mld->mld_mca)) {
			FUNC11(&ma->mca_lock);
			if (FUNC1(&ma->mca_timer))
				FUNC0(&ma->mca_refcnt);
			ma->mca_flags &= ~(MAF_LAST_REPORTER|MAF_TIMER_RUNNING);
			FUNC12(&ma->mca_lock);
			break;
		}
	}
	FUNC10(&idev->lock);
	FUNC4(idev);
	return 0;
}