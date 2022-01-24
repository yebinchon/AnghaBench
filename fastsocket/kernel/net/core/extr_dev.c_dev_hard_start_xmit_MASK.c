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
struct sk_buff {scalar_t__ ip_summed; unsigned int len; int /*<<< orphan*/  destructor; struct sk_buff* next; scalar_t__ encapsulation; scalar_t__ vlan_tci; } ;
struct netdev_queue {int dummy; } ;
struct net_device_ops {int (* ndo_start_xmit ) (struct sk_buff*,struct net_device*) ;} ;
struct net_device {int priv_flags; struct net_device_ops* netdev_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  destructor; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int IFF_XMIT_DST_RELEASE ; 
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 int NETIF_F_ALL_CSUM ; 
 int NETIF_F_HW_VLAN_TX ; 
 int NETIF_F_SG ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int) ; 
 int FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (struct netdev_queue*) ; 
 int /*<<< orphan*/  ptype_all ; 
 scalar_t__ FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 scalar_t__ FUNC14 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct sk_buff*,struct net_device*) ; 
 int FUNC17 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,int,struct net_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC19 (struct netdev_queue*) ; 
 scalar_t__ FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*) ; 
 scalar_t__ FUNC22 (struct sk_buff*) ; 

int FUNC23(struct sk_buff *skb, struct net_device *dev,
			struct netdev_queue *txq)
{
	const struct net_device_ops *ops = dev->netdev_ops;
	int rc;
	unsigned int skb_len;

	if (FUNC6(!skb->next)) {
		int features;

		features = FUNC9(skb);

		if (FUNC22(skb) &&
		    !(features & NETIF_F_HW_VLAN_TX)) {
			skb = FUNC2(skb, FUNC21(skb));
			if (FUNC20(!skb))
				goto out;

			skb->vlan_tci = 0;
		}

		/* If encapsulation offload request, verify we are testing
		 * hardware encapsulation features instead of standard
		 * features for the netdev
		 */
		if (skb->encapsulation)
			features &= NETIF_F_SG;

		if (FUNC8(skb, features)) {
			if (FUNC20(FUNC3(skb, features)))
				goto out_kfree_skb;
			if (skb->next)
				goto gso;
		} else {
			if (FUNC14(skb, features) &&
			    FUNC1(skb))
				goto out_kfree_skb;

			/* If packet is not checksummed and device does not
			 * support checksumming for this protocol, complete
			 * checksumming here.
			 */
			if (skb->ip_summed == CHECKSUM_PARTIAL) {
				if (!skb->encapsulation)
					FUNC15(skb,
						FUNC12(skb));

				if (!(features & NETIF_F_ALL_CSUM) &&
				     FUNC11(skb))
					goto out_kfree_skb;
			}
		}

		/*
		 * If device doesnt need skb->dst, release it right now while
		 * its hot in this cpu cache
		 */
		if (dev->priv_flags & IFF_XMIT_DST_RELEASE)
			FUNC13(skb);

		if (!FUNC7(&ptype_all))
			FUNC4(skb, dev);

		skb_len = skb->len;
		rc = ops->ndo_start_xmit(skb, dev);
		FUNC18(skb, rc, dev, skb_len);
		if (rc == NETDEV_TX_OK)
			FUNC19(txq);
		/*
		 * TODO: if skb_orphan() was called by
		 * dev->hard_start_xmit() (for example, the unmodified
		 * igb driver does that; bnx2 doesn't), then
		 * skb_tx_software_timestamp() will be unable to send
		 * back the time stamp.
		 *
		 * How can this be prevented? Always create another
		 * reference to the socket before calling
		 * dev->hard_start_xmit()? Prevent that skb_orphan()
		 * does anything in dev->hard_start_xmit() by clearing
		 * the skb destructor before the call and restoring it
		 * afterwards, then doing the skb_orphan() ourselves?
		 */
		return rc;
	}

gso:
	do {
		struct sk_buff *nskb = skb->next;

		skb->next = nskb->next;
		nskb->next = NULL;

		if (!FUNC7(&ptype_all))
			FUNC4(nskb, dev);

		skb_len = nskb->len;
		rc = ops->ndo_start_xmit(nskb, dev);
		FUNC18(nskb, rc, dev, skb_len);
		if (FUNC20(rc != NETDEV_TX_OK)) {
			nskb->next = skb->next;
			skb->next = nskb;
			return rc;
		}
		FUNC19(txq);
		if (FUNC20(FUNC10(txq) && skb->next))
			return NETDEV_TX_BUSY;
	} while (skb->next);

	skb->destructor = FUNC0(skb)->destructor;

out_kfree_skb:
	FUNC5(skb);
out:
	return NETDEV_TX_OK;
}