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
typedef  int u8 ;
struct sk_buff {int priority; scalar_t__ data; } ;
struct ieee80211_tx_info {int /*<<< orphan*/  flags; } ;
struct ieee80211_sub_if_data {int noack_map; int /*<<< orphan*/  vif; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; int /*<<< orphan*/  addr1; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int IEEE80211_QOS_CTL_ACK_POLICY_NOACK ; 
 int IEEE80211_QOS_CTL_EOSP ; 
 int IEEE80211_QOS_CTL_MESH_CONTROL_PRESENT ; 
 int IEEE80211_QOS_CTL_MESH_PS_LEVEL ; 
 int IEEE80211_QOS_CTL_RSPI ; 
 int IEEE80211_QOS_CTL_TAG1D_MASK ; 
 struct ieee80211_tx_info* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  IEEE80211_TX_CTL_NO_ACK ; 
 int* FUNC2 (struct ieee80211_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct ieee80211_sub_if_data *sdata,
			   struct sk_buff *skb)
{
	struct ieee80211_hdr *hdr = (void *)skb->data;
	struct ieee80211_tx_info *info = FUNC1(skb);
	u8 *p;
	u8 ack_policy, tid;

	if (!FUNC3(hdr->frame_control))
		return;

	p = FUNC2(hdr);
	tid = skb->priority & IEEE80211_QOS_CTL_TAG1D_MASK;

	/* preserve EOSP bit */
	ack_policy = *p & IEEE80211_QOS_CTL_EOSP;

	if (FUNC6(hdr->addr1) ||
	    sdata->noack_map & FUNC0(tid)) {
		ack_policy |= IEEE80211_QOS_CTL_ACK_POLICY_NOACK;
		info->flags |= IEEE80211_TX_CTL_NO_ACK;
	}

	/* qos header is 2 bytes */
	*p++ = ack_policy | tid;
	if (FUNC5(&sdata->vif)) {
		/* preserve RSPI and Mesh PS Level bit */
		*p &= ((IEEE80211_QOS_CTL_RSPI |
			IEEE80211_QOS_CTL_MESH_PS_LEVEL) >> 8);

		/* Nulls don't have a mesh header (frame body) */
		if (!FUNC4(hdr->frame_control))
			*p |= (IEEE80211_QOS_CTL_MESH_CONTROL_PRESENT >> 8);
	} else {
		*p = 0;
	}
}