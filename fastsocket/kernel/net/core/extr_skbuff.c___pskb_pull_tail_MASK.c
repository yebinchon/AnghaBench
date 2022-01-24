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
struct sk_buff {int tail; int end; int len; int data_len; struct sk_buff* next; } ;
struct TYPE_4__ {int nr_frags; TYPE_1__* frags; struct sk_buff* frag_list; } ;
struct TYPE_3__ {int size; int page_offset; int /*<<< orphan*/  page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (struct sk_buff*) ; 
 TYPE_2__* FUNC12 (struct sk_buff*) ; 
 unsigned char* FUNC13 (struct sk_buff*) ; 

unsigned char *FUNC14(struct sk_buff *skb, int delta)
{
	/* If skb has not enough free space at tail, get new one
	 * plus 128 bytes for future expansions. If we have enough
	 * room at tail, reallocate without expansion only if skb is cloned.
	 */
	int i, k, eat = (skb->tail + delta) - skb->end;

	if (eat > 0 || FUNC7(skb)) {
		if (FUNC3(skb, 0, eat > 0 ? eat + 128 : 0,
				     GFP_ATOMIC))
			return NULL;
	}

	if (FUNC8(skb, FUNC10(skb), FUNC13(skb), delta))
		FUNC0();

	/* Optimization: no fragments, no reasons to preestimate
	 * size of pulled pages. Superb.
	 */
	if (!FUNC9(skb))
		goto pull_pages;

	/* Estimate size of pulled pages. */
	eat = delta;
	for (i = 0; i < FUNC12(skb)->nr_frags; i++) {
		if (FUNC12(skb)->frags[i].size >= eat)
			goto pull_pages;
		eat -= FUNC12(skb)->frags[i].size;
	}

	/* If we need update frag list, we are in troubles.
	 * Certainly, it possible to add an offset to skb data,
	 * but taking into account that pulling is expected to
	 * be very rare operation, it is worth to fight against
	 * further bloating skb head and crucify ourselves here instead.
	 * Pure masohism, indeed. 8)8)
	 */
	if (eat) {
		struct sk_buff *list = FUNC12(skb)->frag_list;
		struct sk_buff *clone = NULL;
		struct sk_buff *insp = NULL;

		do {
			FUNC1(!list);

			if (list->len <= eat) {
				/* Eaten as whole. */
				eat -= list->len;
				list = list->next;
				insp = list;
			} else {
				/* Eaten partially. */

				if (FUNC11(list)) {
					/* Sucks! We need to fork list. :-( */
					clone = FUNC6(list, GFP_ATOMIC);
					if (!clone)
						return NULL;
					insp = list->next;
					list = clone;
				} else {
					/* This may be pulled without
					 * problems. */
					insp = list;
				}
				if (!FUNC4(list, eat)) {
					FUNC2(clone);
					return NULL;
				}
				break;
			}
		} while (eat);

		/* Free pulled out fragments. */
		while ((list = FUNC12(skb)->frag_list) != insp) {
			FUNC12(skb)->frag_list = list->next;
			FUNC2(list);
		}
		/* And insert new clone at head. */
		if (clone) {
			clone->next = list;
			FUNC12(skb)->frag_list = clone;
		}
	}
	/* Success! Now we may commit changes to skb data. */

pull_pages:
	eat = delta;
	k = 0;
	for (i = 0; i < FUNC12(skb)->nr_frags; i++) {
		if (FUNC12(skb)->frags[i].size <= eat) {
			FUNC5(FUNC12(skb)->frags[i].page);
			eat -= FUNC12(skb)->frags[i].size;
		} else {
			FUNC12(skb)->frags[k] = FUNC12(skb)->frags[i];
			if (eat) {
				FUNC12(skb)->frags[k].page_offset += eat;
				FUNC12(skb)->frags[k].size -= eat;
				eat = 0;
			}
			k++;
		}
	}
	FUNC12(skb)->nr_frags = k;

	skb->tail     += delta;
	skb->data_len -= delta;

	return FUNC13(skb);
}