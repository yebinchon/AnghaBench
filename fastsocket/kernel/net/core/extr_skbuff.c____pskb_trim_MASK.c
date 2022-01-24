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
struct sk_buff {int len; unsigned int data_len; struct sk_buff* next; } ;
struct TYPE_4__ {int nr_frags; struct sk_buff* frag_list; TYPE_1__* frags; } ;
struct TYPE_3__ {int size; int /*<<< orphan*/  page; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff**) ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 
 unsigned int FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC11 (struct sk_buff*) ; 
 TYPE_2__* FUNC12 (struct sk_buff*) ; 
 scalar_t__ FUNC13 (int) ; 

int FUNC14(struct sk_buff *skb, unsigned int len)
{
	struct sk_buff **fragp;
	struct sk_buff *frag;
	int offset = FUNC9(skb);
	int nfrags = FUNC12(skb)->nr_frags;
	int i;
	int err;

	if (FUNC5(skb) &&
	    FUNC13((err = FUNC1(skb, 0, 0, GFP_ATOMIC))))
		return err;

	i = 0;
	if (offset >= len)
		goto drop_pages;

	for (; i < nfrags; i++) {
		int end = offset + FUNC12(skb)->frags[i].size;

		if (end < len) {
			offset = end;
			continue;
		}

		FUNC12(skb)->frags[i++].size = len - offset;

drop_pages:
		FUNC12(skb)->nr_frags = i;

		for (; i < nfrags; i++)
			FUNC3(FUNC12(skb)->frags[i].page);

		if (FUNC8(skb))
			FUNC6(skb);
		goto done;
	}

	for (fragp = &FUNC12(skb)->frag_list; (frag = *fragp);
	     fragp = &frag->next) {
		int end = offset + frag->len;

		if (FUNC11(frag)) {
			struct sk_buff *nfrag;

			nfrag = FUNC4(frag, GFP_ATOMIC);
			if (FUNC13(!nfrag))
				return -ENOMEM;

			nfrag->next = frag->next;
			FUNC0(frag);
			frag = nfrag;
			*fragp = frag;
		}

		if (end < len) {
			offset = end;
			continue;
		}

		if (end > len &&
		    FUNC13((err = FUNC2(frag, len - offset))))
			return err;

		if (frag->next)
			FUNC7(&frag->next);
		break;
	}

done:
	if (len > FUNC9(skb)) {
		skb->data_len -= skb->len - len;
		skb->len       = len;
	} else {
		skb->len       = len;
		skb->data_len  = 0;
		FUNC10(skb, len);
	}

	return 0;
}