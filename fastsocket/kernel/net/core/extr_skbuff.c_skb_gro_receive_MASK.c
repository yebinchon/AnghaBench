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
struct skb_shared_info {int nr_frags; unsigned int gso_size; TYPE_1__* frags; struct sk_buff* frag_list; } ;
struct sk_buff {unsigned int len; unsigned int truesize; unsigned int data_len; struct sk_buff* prev; struct sk_buff* next; scalar_t__ data; int /*<<< orphan*/  mac_len; } ;
struct TYPE_3__ {unsigned int page_offset; unsigned int size; } ;
typedef  TYPE_1__ skb_frag_t ;
struct TYPE_4__ {int free; int same_flow; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int E2BIG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int MAX_SKB_FRAGS ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,unsigned int) ; 
 struct sk_buff* FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__) ; 
 unsigned int FUNC6 (struct sk_buff*) ; 
 unsigned int FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 unsigned int FUNC9 (struct sk_buff*) ; 
 unsigned int FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct skb_shared_info* FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 
 scalar_t__ FUNC19 (int) ; 

int FUNC20(struct sk_buff **head, struct sk_buff *skb)
{
	struct sk_buff *p = *head;
	struct sk_buff *nskb;
	struct skb_shared_info *skbinfo = FUNC17(skb);
	struct skb_shared_info *pinfo = FUNC17(p);
	unsigned int headroom;
	unsigned int len = FUNC6(skb);
	unsigned int offset = FUNC7(skb);
	unsigned int headlen = FUNC9(skb);

	if (p->len + len >= 65536)
		return -E2BIG;

	if (pinfo->frag_list)
		goto merge;
	else if (headlen <= offset) {
		skb_frag_t *frag;
		skb_frag_t *frag2;
		int i = skbinfo->nr_frags;
		int nr_frags = pinfo->nr_frags + i;

		offset -= headlen;

		if (nr_frags > MAX_SKB_FRAGS)
			return -E2BIG;

		pinfo->nr_frags = nr_frags;
		skbinfo->nr_frags = 0;

		frag = pinfo->frags + nr_frags;
		frag2 = skbinfo->frags + i;
		do {
			*--frag = *--frag2;
		} while (--i);

		frag->page_offset += offset;
		frag->size -= offset;

		skb->truesize -= skb->data_len;
		skb->len -= skb->data_len;
		skb->data_len = 0;

		FUNC0(skb)->free = 1;
		goto done;
	} else if (FUNC6(p) != pinfo->gso_size)
		return -E2BIG;

	headroom = FUNC10(p);
	nskb = FUNC4(headroom + FUNC7(p), GFP_ATOMIC);
	if (FUNC19(!nskb))
		return -ENOMEM;

	FUNC1(nskb, p);
	nskb->mac_len = p->mac_len;

	FUNC13(nskb, headroom);
	FUNC3(nskb, FUNC7(p));

	FUNC14(nskb, FUNC11(p) - p->data);
	FUNC15(nskb, FUNC12(p));
	FUNC16(nskb, FUNC18(p));

	FUNC2(p, FUNC7(p));
	FUNC5(FUNC11(nskb), FUNC11(p),
	       p->data - FUNC11(p));

	*FUNC0(nskb) = *FUNC0(p);
	FUNC17(nskb)->frag_list = p;
	FUNC17(nskb)->gso_size = pinfo->gso_size;
	pinfo->gso_size = 0;
	FUNC8(p);
	nskb->prev = p;

	nskb->data_len += p->len;
	nskb->truesize += p->len;
	nskb->len += p->len;

	*head = nskb;
	nskb->next = p->next;
	p->next = NULL;

	p = nskb;

merge:
	if (offset > headlen) {
		unsigned int eat = offset - headlen;

		skbinfo->frags[0].page_offset += eat;
		skbinfo->frags[0].size -= eat;
		skb->data_len -= eat;
		skb->len -= eat;
		offset = headlen;
	}

	FUNC2(skb, offset);

	p->prev->next = skb;
	p->prev = skb;
	FUNC8(skb);

done:
	FUNC0(p)->count++;
	p->data_len += len;
	p->truesize += len;
	p->len += len;

	FUNC0(skb)->same_flow = 1;
	return 0;
}