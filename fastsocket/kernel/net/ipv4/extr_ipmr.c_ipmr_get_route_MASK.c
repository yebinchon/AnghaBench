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
struct rtmsg {int rtm_flags; } ;
struct rtable {int /*<<< orphan*/  rt_dst; int /*<<< orphan*/  rt_src; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct mr_table {int dummy; } ;
struct mfc_cache {int /*<<< orphan*/  mfc_flags; } ;
struct iphdr {int ihl; scalar_t__ version; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENODEV ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  MFC_NOTIFY ; 
 int RTM_F_NOTIFY ; 
 int /*<<< orphan*/  RT_TABLE_DEFAULT ; 
 int FUNC0 (struct mr_table*,struct sk_buff*,struct mfc_cache*,struct rtmsg*) ; 
 struct iphdr* FUNC1 (struct sk_buff*) ; 
 struct mfc_cache* FUNC2 (struct mr_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mr_table*,int,struct sk_buff*) ; 
 int FUNC4 (struct mr_table*,struct net_device*) ; 
 struct mr_table* FUNC5 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mrt_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 struct rtable* FUNC11 (struct sk_buff*) ; 

int FUNC12(struct net *net,
		   struct sk_buff *skb, struct rtmsg *rtm, int nowait)
{
	int err;
	struct mr_table *mrt;
	struct mfc_cache *cache;
	struct rtable *rt = FUNC11(skb);

	mrt = FUNC5(net, RT_TABLE_DEFAULT);
	if (mrt == NULL)
		return -ENOENT;

	FUNC6(&mrt_lock);
	cache = FUNC2(mrt, rt->rt_src, rt->rt_dst);

	if (cache == NULL) {
		struct sk_buff *skb2;
		struct iphdr *iph;
		struct net_device *dev;
		int vif;

		if (nowait) {
			FUNC7(&mrt_lock);
			return -EAGAIN;
		}

		dev = skb->dev;
		if (dev == NULL || (vif = FUNC4(mrt, dev)) < 0) {
			FUNC7(&mrt_lock);
			return -ENODEV;
		}
		skb2 = FUNC8(skb, GFP_ATOMIC);
		if (!skb2) {
			FUNC7(&mrt_lock);
			return -ENOMEM;
		}

		FUNC9(skb2, sizeof(struct iphdr));
		FUNC10(skb2);
		iph = FUNC1(skb2);
		iph->ihl = sizeof(struct iphdr) >> 2;
		iph->saddr = rt->rt_src;
		iph->daddr = rt->rt_dst;
		iph->version = 0;
		err = FUNC3(mrt, vif, skb2);
		FUNC7(&mrt_lock);
		return err;
	}

	if (!nowait && (rtm->rtm_flags&RTM_F_NOTIFY))
		cache->mfc_flags |= MFC_NOTIFY;
	err = FUNC0(mrt, skb, cache, rtm);
	FUNC7(&mrt_lock);
	return err;
}