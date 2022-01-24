#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {unsigned int data; unsigned int len; int head; unsigned int truesize; scalar_t__ ip_summed; unsigned int data_len; struct sk_buff* next; int /*<<< orphan*/  csum; scalar_t__ network_header; scalar_t__ transport_header; int /*<<< orphan*/  mac_len; int /*<<< orphan*/  csum_start; } ;
struct TYPE_4__ {int size; unsigned int page_offset; int /*<<< orphan*/  page; } ;
typedef  TYPE_1__ skb_frag_t ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_6__ {unsigned int gso_size; int nr_frags; struct sk_buff* frag_list; TYPE_1__* frags; } ;
struct TYPE_5__ {int /*<<< orphan*/  shared_frag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* CHECKSUM_NONE ; 
 scalar_t__ CHECKSUM_PARTIAL ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct sk_buff* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int NETIF_F_SG ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,unsigned int) ; 
 struct sk_buff* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,unsigned int,int,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC11 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,unsigned int,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,unsigned int,unsigned int,int) ; 
 scalar_t__ FUNC14 (struct sk_buff*,unsigned int) ; 
 int FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 unsigned int FUNC17 (struct sk_buff*) ; 
 unsigned int FUNC18 (struct sk_buff*) ; 
 unsigned int FUNC19 (struct sk_buff*) ; 
 scalar_t__ FUNC20 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*) ; 
 unsigned int FUNC22 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC24 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC25 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC26 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC27 (struct sk_buff*) ; 
 unsigned int FUNC28 (struct sk_buff*) ; 
 TYPE_2__* FUNC29 (struct sk_buff*) ; 
 scalar_t__ FUNC30 (int) ; 

struct sk_buff *FUNC31(struct sk_buff *skb, int features)
{
	struct sk_buff *segs = NULL;
	struct sk_buff *tail = NULL;
	struct sk_buff *fskb = FUNC27(skb)->frag_list;
	unsigned int mss = FUNC27(skb)->gso_size;
	unsigned int doffset = skb->data - FUNC19(skb);
	unsigned int offset = doffset;
	unsigned int tnl_hlen = FUNC28(skb);
	unsigned int headroom;
	unsigned int len;
	__be16 proto;
	bool csum;
	int sg = !!(features & NETIF_F_SG);
	int nfrags = FUNC27(skb)->nr_frags;
	int err = -ENOMEM;
	int i = 0;
	int pos;

	proto = FUNC21(skb);
	if (FUNC30(!proto))
		return FUNC1(-EINVAL);

	csum = !!FUNC7(features, proto);
	FUNC4(skb, doffset);
	headroom = FUNC18(skb);
	pos = FUNC17(skb);

	do {
		struct sk_buff *nskb;
		skb_frag_t *frag;
		int hsize;
		int size;

		len = skb->len - offset;
		if (len > mss)
			len = mss;

		hsize = FUNC17(skb) - offset;
		if (hsize < 0)
			hsize = 0;
		if (hsize > len || !sg)
			hsize = len;

		if (!hsize && i >= nfrags) {
			FUNC0(fskb->len != len);

			pos += len;
			nskb = FUNC11(fskb, GFP_ATOMIC);
			fskb = fskb->next;

			if (FUNC30(!nskb))
				goto err;

			hsize = FUNC15(nskb) - nskb->head;
			if (FUNC14(nskb, doffset + headroom)) {
				FUNC9(nskb);
				goto err;
			}

			nskb->truesize += FUNC15(nskb) - nskb->head -
					  hsize;
			FUNC23(nskb);
			FUNC4(nskb, doffset);
		} else {
			nskb = FUNC6(hsize + doffset + headroom,
					 GFP_ATOMIC);

			if (FUNC30(!nskb))
				goto err;

			FUNC24(nskb, headroom);
			FUNC5(nskb, doffset);
		}

		if (segs)
			tail->next = nskb;
		else
			segs = nskb;
		tail = nskb;

		FUNC3(nskb, skb);
		nskb->mac_len = skb->mac_len;

		/* nskb and skb might have different headroom */
		if (nskb->ip_summed == CHECKSUM_PARTIAL)
			nskb->csum_start += FUNC18(nskb) - headroom;

		FUNC25(nskb);
		FUNC26(nskb, skb->mac_len);
		nskb->transport_header = (nskb->network_header +
					  FUNC20(skb));

		FUNC13(skb, -tnl_hlen,
						 nskb->data - tnl_hlen,
						 doffset + tnl_hlen);

		if (fskb != FUNC27(skb)->frag_list)
			goto perform_csum_check;

		if (!sg) {
			nskb->ip_summed = CHECKSUM_NONE;
			nskb->csum = FUNC12(skb, offset,
							    FUNC22(nskb, len),
							    len, 0);
			continue;
		}

		frag = FUNC27(nskb)->frags;

		FUNC13(skb, offset,
						 FUNC22(nskb, hsize), hsize);

		FUNC29(nskb)->shared_frag = FUNC29(skb)->shared_frag;

		while (pos < offset + len && i < nfrags) {
			*frag = FUNC27(skb)->frags[i];
			FUNC8(frag->page);
			size = frag->size;

			if (pos < offset) {
				frag->page_offset += offset - pos;
				frag->size -= offset - pos;
			}

			FUNC27(nskb)->nr_frags++;

			if (pos + size <= offset + len) {
				i++;
				pos += size;
			} else {
				frag->size -= pos + size - (offset + len);
				goto skip_fraglist;
			}

			frag++;
		}

		if (pos < offset + len) {
			struct sk_buff *fskb2 = fskb;

			FUNC0(pos + fskb->len != offset + len);

			pos += fskb->len;
			fskb = fskb->next;

			if (fskb2->next) {
				fskb2 = FUNC11(fskb2, GFP_ATOMIC);
				if (!fskb2)
					goto err;
			} else
				FUNC16(fskb2);

			FUNC2(nskb);
			FUNC27(nskb)->frag_list = fskb2;
		}

skip_fraglist:
		nskb->data_len = len - hsize;
		nskb->len += nskb->data_len;
		nskb->truesize += nskb->data_len;

perform_csum_check:
		if (!csum) {
			nskb->csum = FUNC10(nskb, doffset,
						  nskb->len - doffset, 0);
			nskb->ip_summed = CHECKSUM_NONE;
		}
	} while ((offset += len) < skb->len);

	return segs;

err:
	while ((skb = segs)) {
		segs = skb->next;
		FUNC9(skb);
	}
	return FUNC1(err);
}