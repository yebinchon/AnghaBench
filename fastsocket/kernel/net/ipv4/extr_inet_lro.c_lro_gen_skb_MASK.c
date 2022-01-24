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
typedef  int /*<<< orphan*/  u32 ;
struct skb_frag_struct {int size; int page_offset; } ;
struct sk_buff {int len; int data_len; int truesize; int tail; int /*<<< orphan*/  protocol; int /*<<< orphan*/  csum; int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  data; } ;
struct net_lro_mgr {int /*<<< orphan*/  dev; int /*<<< orphan*/  frag_align_pad; } ;
typedef  int /*<<< orphan*/  __wsum ;
struct TYPE_2__ {struct skb_frag_struct* frags; int /*<<< orphan*/  nr_frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int) ; 
 int FUNC2 (int,int) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC6(struct net_lro_mgr *lro_mgr,
				   struct skb_frag_struct *frags,
				   int len, int true_size,
				   void *mac_hdr,
				   int hlen, __wsum sum,
				   u32 ip_summed)
{
	struct sk_buff *skb;
	struct skb_frag_struct *skb_frags;
	int data_len = len;
	int hdr_len = FUNC2(len, hlen);

	skb = FUNC3(lro_mgr->dev, hlen + lro_mgr->frag_align_pad);
	if (!skb)
		return NULL;

	FUNC4(skb, lro_mgr->frag_align_pad);
	skb->len = len;
	skb->data_len = len - hdr_len;
	skb->truesize += true_size;
	skb->tail += hdr_len;

	FUNC1(skb->data, mac_hdr, hdr_len);

	skb_frags = FUNC5(skb)->frags;
	while (data_len > 0) {
		*skb_frags = *frags;
		data_len -= frags->size;
		skb_frags++;
		frags++;
		FUNC5(skb)->nr_frags++;
	}

	FUNC5(skb)->frags[0].page_offset += hdr_len;
	FUNC5(skb)->frags[0].size -= hdr_len;

	skb->ip_summed = ip_summed;
	skb->csum = sum;
	skb->protocol = FUNC0(skb, lro_mgr->dev);
	return skb;
}