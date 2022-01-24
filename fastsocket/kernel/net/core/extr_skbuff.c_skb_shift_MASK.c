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
struct skb_frag_struct {int page_offset; int size; int /*<<< orphan*/  page; } ;
struct sk_buff {int len; int data_len; int truesize; void* ip_summed; } ;
struct TYPE_2__ {int nr_frags; struct skb_frag_struct* frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* CHECKSUM_PARTIAL ; 
 int MAX_SKB_FRAGS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 TYPE_1__* FUNC6 (struct sk_buff*) ; 

int FUNC7(struct sk_buff *tgt, struct sk_buff *skb, int shiftlen)
{
	int from, to, merge, todo;
	struct skb_frag_struct *fragfrom, *fragto;

	FUNC0(shiftlen > skb->len);
	FUNC0(FUNC4(skb));	/* Would corrupt stream */

	todo = shiftlen;
	from = 0;
	to = FUNC6(tgt)->nr_frags;
	fragfrom = &FUNC6(skb)->frags[from];

	/* Actual merge is delayed until the point when we know we can
	 * commit all, so that we don't have to undo partial changes
	 */
	if (!to ||
	    !FUNC3(tgt, to, fragfrom->page, fragfrom->page_offset)) {
		merge = -1;
	} else {
		merge = to - 1;

		todo -= fragfrom->size;
		if (todo < 0) {
			if (FUNC5(skb) ||
			    FUNC5(tgt))
				return 0;

			/* All previous frag pointers might be stale! */
			fragfrom = &FUNC6(skb)->frags[from];
			fragto = &FUNC6(tgt)->frags[merge];

			fragto->size += shiftlen;
			fragfrom->size -= shiftlen;
			fragfrom->page_offset += shiftlen;

			goto onlymerged;
		}

		from++;
	}

	/* Skip full, not-fitting skb to avoid expensive operations */
	if ((shiftlen == skb->len) &&
	    (FUNC6(skb)->nr_frags - from) > (MAX_SKB_FRAGS - to))
		return 0;

	if (FUNC5(skb) || FUNC5(tgt))
		return 0;

	while ((todo > 0) && (from < FUNC6(skb)->nr_frags)) {
		if (to == MAX_SKB_FRAGS)
			return 0;

		fragfrom = &FUNC6(skb)->frags[from];
		fragto = &FUNC6(tgt)->frags[to];

		if (todo >= fragfrom->size) {
			*fragto = *fragfrom;
			todo -= fragfrom->size;
			from++;
			to++;

		} else {
			FUNC1(fragfrom->page);
			fragto->page = fragfrom->page;
			fragto->page_offset = fragfrom->page_offset;
			fragto->size = todo;

			fragfrom->page_offset += todo;
			fragfrom->size -= todo;
			todo = 0;

			to++;
			break;
		}
	}

	/* Ready to "commit" this state change to tgt */
	FUNC6(tgt)->nr_frags = to;

	if (merge >= 0) {
		fragfrom = &FUNC6(skb)->frags[0];
		fragto = &FUNC6(tgt)->frags[merge];

		fragto->size += fragfrom->size;
		FUNC2(fragfrom->page);
	}

	/* Reposition in the original skb */
	to = 0;
	while (from < FUNC6(skb)->nr_frags)
		FUNC6(skb)->frags[to++] = FUNC6(skb)->frags[from++];
	FUNC6(skb)->nr_frags = to;

	FUNC0(todo > 0 && !FUNC6(skb)->nr_frags);

onlymerged:
	/* Most likely the tgt won't ever need its checksum anymore, skb on
	 * the other hand might need it if it needs to be resent
	 */
	tgt->ip_summed = CHECKSUM_PARTIAL;
	skb->ip_summed = CHECKSUM_PARTIAL;

	/* Yak, is it really working this way? Some helper please? */
	skb->len -= shiftlen;
	skb->data_len -= shiftlen;
	skb->truesize -= shiftlen;
	tgt->len += shiftlen;
	tgt->data_len += shiftlen;
	tgt->truesize += shiftlen;

	return shiftlen;
}