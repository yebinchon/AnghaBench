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
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct in6_addr {int dummy; } ;
struct mld_msg {scalar_t__ mld_maxdelay; struct in6_addr mld_mca; } ;
struct mld2_query {scalar_t__ mld2q_mrc; int mld2q_qrv; scalar_t__ mld2q_nsrcs; int /*<<< orphan*/  mld2q_srcs; } ;
struct ipv6hdr {int dummy; } ;
struct inet6_dev {int mc_qrv; unsigned long mc_maxdelay; int /*<<< orphan*/  lock; struct ifmcaddr6* mc_list; int /*<<< orphan*/  mc_ifc_timer; scalar_t__ mc_ifc_count; scalar_t__ mc_v1_seen; } ;
struct ifmcaddr6 {int mca_flags; int /*<<< orphan*/  mca_lock; int /*<<< orphan*/  mca_addr; struct ifmcaddr6* next; } ;
struct icmp6hdr {int dummy; } ;
struct TYPE_2__ {scalar_t__ payload_len; struct in6_addr saddr; } ;

/* Variables and functions */
 int EINVAL ; 
 int HZ ; 
 int IPV6_ADDR_ANY ; 
 int IPV6_ADDR_LINKLOCAL ; 
 int IPV6_ADDR_MULTICAST ; 
 int MAF_GSQUERY ; 
 int MAF_TIMER_RUNNING ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct inet6_dev*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifmcaddr6*,unsigned long) ; 
 struct inet6_dev* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct in6_addr*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct in6_addr*) ; 
 TYPE_1__* FUNC9 (struct sk_buff*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC10 (struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct inet6_dev*) ; 
 scalar_t__ FUNC12 (struct ifmcaddr6*,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (struct sk_buff*) ; 
 scalar_t__ FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

int FUNC21(struct sk_buff *skb)
{
	struct mld2_query *mlh2 = NULL;
	struct ifmcaddr6 *ma;
	struct in6_addr *group;
	unsigned long max_delay;
	struct inet6_dev *idev;
	struct mld_msg *mld;
	int group_type;
	int mark = 0;
	int len;

	if (!FUNC14(skb, sizeof(struct in6_addr)))
		return -EINVAL;

	/* compute payload length excluding extension headers */
	len = FUNC13(FUNC9(skb)->payload_len) + sizeof(struct ipv6hdr);
	len -= FUNC17(skb);

	/* Drop queries with not link local source */
	if (!(FUNC8(&FUNC9(skb)->saddr) & IPV6_ADDR_LINKLOCAL))
		return -EINVAL;

	idev = FUNC5(skb->dev);

	if (idev == NULL)
		return 0;

	mld = (struct mld_msg *)FUNC3(skb);
	group = &mld->mld_mca;
	group_type = FUNC8(group);

	if (group_type != IPV6_ADDR_ANY &&
	    !(group_type&IPV6_ADDR_MULTICAST)) {
		FUNC6(idev);
		return -EINVAL;
	}

	if (len == 24) {
		int switchback;
		/* MLDv1 router present */

		/* Translate milliseconds to jiffies */
		max_delay = (FUNC13(mld->mld_maxdelay)*HZ)/1000;

		switchback = (idev->mc_qrv + 1) * max_delay;
		idev->mc_v1_seen = jiffies + switchback;

		/* cancel the interface change timer */
		idev->mc_ifc_count = 0;
		if (FUNC2(&idev->mc_ifc_timer))
			FUNC1(idev);
		/* clear deleted report items */
		FUNC10(idev);
	} else if (len >= 28) {
		int srcs_offset = sizeof(struct mld2_query) -
				  sizeof(struct icmp6hdr);
		if (!FUNC14(skb, srcs_offset)) {
			FUNC6(idev);
			return -EINVAL;
		}
		mlh2 = (struct mld2_query *)FUNC18(skb);
		max_delay = (FUNC0(FUNC13(mlh2->mld2q_mrc))*HZ)/1000;
		if (!max_delay)
			max_delay = 1;
		idev->mc_maxdelay = max_delay;
		if (mlh2->mld2q_qrv)
			idev->mc_qrv = mlh2->mld2q_qrv;
		if (group_type == IPV6_ADDR_ANY) { /* general query */
			if (mlh2->mld2q_nsrcs) {
				FUNC6(idev);
				return -EINVAL; /* no sources allowed */
			}
			FUNC11(idev);
			FUNC6(idev);
			return 0;
		}
		/* mark sources to include, if group & source-specific */
		if (mlh2->mld2q_nsrcs != 0) {
			if (!FUNC14(skb, srcs_offset +
			    FUNC13(mlh2->mld2q_nsrcs) * sizeof(struct in6_addr))) {
				FUNC6(idev);
				return -EINVAL;
			}
			mlh2 = (struct mld2_query *)FUNC18(skb);
			mark = 1;
		}
	} else {
		FUNC6(idev);
		return -EINVAL;
	}

	FUNC15(&idev->lock);
	if (group_type == IPV6_ADDR_ANY) {
		for (ma = idev->mc_list; ma; ma=ma->next) {
			FUNC19(&ma->mca_lock);
			FUNC4(ma, max_delay);
			FUNC20(&ma->mca_lock);
		}
	} else {
		for (ma = idev->mc_list; ma; ma=ma->next) {
			if (!FUNC7(group, &ma->mca_addr))
				continue;
			FUNC19(&ma->mca_lock);
			if (ma->mca_flags & MAF_TIMER_RUNNING) {
				/* gsquery <- gsquery && mark */
				if (!mark)
					ma->mca_flags &= ~MAF_GSQUERY;
			} else {
				/* gsquery <- mark */
				if (mark)
					ma->mca_flags |= MAF_GSQUERY;
				else
					ma->mca_flags &= ~MAF_GSQUERY;
			}
			if (!(ma->mca_flags & MAF_GSQUERY) ||
			    FUNC12(ma, FUNC13(mlh2->mld2q_nsrcs), mlh2->mld2q_srcs))
				FUNC4(ma, max_delay);
			FUNC20(&ma->mca_lock);
			break;
		}
	}
	FUNC16(&idev->lock);
	FUNC6(idev);

	return 0;
}