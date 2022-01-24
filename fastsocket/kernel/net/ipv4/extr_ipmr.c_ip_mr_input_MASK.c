#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct net {int dummy; } ;
struct mr_table {scalar_t__ mroute_sk; } ;
struct mfc_cache {int dummy; } ;
struct TYPE_5__ {scalar_t__ router_alert; } ;
struct TYPE_8__ {int flags; TYPE_1__ opt; } ;
struct TYPE_7__ {scalar_t__ protocol; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct TYPE_6__ {int rt_flags; int /*<<< orphan*/  fl; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int ENODEV ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 TYPE_4__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ IPPROTO_IGMP ; 
 int IPSKB_FORWARDED ; 
 int RTCF_LOCAL ; 
 struct net* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 TYPE_3__* FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct net*,struct mr_table*,struct sk_buff*,struct mfc_cache*,int) ; 
 struct mfc_cache* FUNC6 (struct mr_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mr_table*,int,struct sk_buff*) ; 
 int FUNC8 (struct net*,int /*<<< orphan*/ *,struct mr_table**) ; 
 int FUNC9 (struct mr_table*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  mrt_lock ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC15 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC16 (struct sk_buff*) ; 

int FUNC17(struct sk_buff *skb)
{
	struct mfc_cache *cache;
	struct net *net = FUNC1(skb->dev);
	int local = FUNC16(skb)->rt_flags & RTCF_LOCAL;
	struct mr_table *mrt;
	int err;

	/* Packet is looped back after forward, it should not be
	   forwarded second time, but still can be delivered locally.
	 */
	if (FUNC0(skb)->flags&IPSKB_FORWARDED)
		goto dont_forward;

	err = FUNC8(net, &FUNC16(skb)->fl, &mrt);
	if (err < 0) {
		FUNC10(skb);
		return err;
	}

	if (!local) {
		    if (FUNC0(skb)->opt.router_alert) {
			    if (FUNC2(skb))
				    return 0;
		    } else if (FUNC3(skb)->protocol == IPPROTO_IGMP){
			    /* IGMPv1 (and broken IGMPv2 implementations sort of
			       Cisco IOS <= 11.2(8)) do not put router alert
			       option to IGMP packets destined to routable
			       groups. It is very bad, because it means
			       that we can forward NO IGMP messages.
			     */
			    FUNC13(&mrt_lock);
			    if (mrt->mroute_sk) {
				    FUNC11(skb);
				    FUNC12(mrt->mroute_sk, skb);
				    FUNC14(&mrt_lock);
				    return 0;
			    }
			    FUNC14(&mrt_lock);
		    }
	}

	FUNC13(&mrt_lock);
	cache = FUNC6(mrt, FUNC3(skb)->saddr, FUNC3(skb)->daddr);

	/*
	 *	No usable cache entry
	 */
	if (cache == NULL) {
		int vif;

		if (local) {
			struct sk_buff *skb2 = FUNC15(skb, GFP_ATOMIC);
			FUNC4(skb);
			if (skb2 == NULL) {
				FUNC14(&mrt_lock);
				return -ENOBUFS;
			}
			skb = skb2;
		}

		vif = FUNC9(mrt, skb->dev);
		if (vif >= 0) {
			int err = FUNC7(mrt, vif, skb);
			FUNC14(&mrt_lock);

			return err;
		}
		FUNC14(&mrt_lock);
		FUNC10(skb);
		return -ENODEV;
	}

	FUNC5(net, mrt, skb, cache, local);

	FUNC14(&mrt_lock);

	if (local)
		return FUNC4(skb);

	return 0;

dont_forward:
	if (local)
		return FUNC4(skb);
	FUNC10(skb);
	return 0;
}