#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  frag; } ;
struct sw_flow_key {TYPE_1__ ip; } ;
struct sk_buff {struct sk_buff* next; } ;
struct net {int dummy; } ;
struct dp_upcall_info {struct sw_flow_key* key; } ;
struct TYPE_4__ {unsigned short gso_type; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int NETIF_F_HW_CSUM ; 
 int NETIF_F_SG ; 
 int /*<<< orphan*/  OVS_FRAG_TYPE_LATER ; 
 int FUNC1 (struct sk_buff*) ; 
 unsigned short SKB_GSO_UDP ; 
 struct sk_buff* FUNC2 (struct sk_buff*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct net*,int,struct sk_buff*,struct dp_upcall_info const*) ; 
 TYPE_2__* FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC7(struct net *net, int dp_ifindex,
			     struct sk_buff *skb,
			     const struct dp_upcall_info *upcall_info)
{
	unsigned short gso_type = FUNC6(skb)->gso_type;
	struct dp_upcall_info later_info;
	struct sw_flow_key later_key;
	struct sk_buff *segs, *nskb;
	int err;

	segs = FUNC2(skb, NETIF_F_SG | NETIF_F_HW_CSUM, false);
	if (FUNC0(segs))
		return FUNC1(segs);

	/* Queue all of the segments. */
	skb = segs;
	do {
		err = FUNC5(net, dp_ifindex, skb, upcall_info);
		if (err)
			break;

		if (skb == segs && gso_type & SKB_GSO_UDP) {
			/* The initial flow key extracted by ovs_flow_extract()
			 * in this case is for a first fragment, so we need to
			 * properly mark later fragments.
			 */
			later_key = *upcall_info->key;
			later_key.ip.frag = OVS_FRAG_TYPE_LATER;

			later_info = *upcall_info;
			later_info.key = &later_key;
			upcall_info = &later_info;
		}
	} while ((skb = skb->next));

	/* Free all of the segments. */
	skb = segs;
	do {
		nskb = skb->next;
		if (err)
			FUNC4(skb);
		else
			FUNC3(skb);
	} while ((skb = nskb));
	return err;
}