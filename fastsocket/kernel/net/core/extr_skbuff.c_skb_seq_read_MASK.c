#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct skb_seq_state {unsigned int lower_offset; unsigned int upper_offset; unsigned int stepped_offset; size_t frag_idx; TYPE_3__* cur_skb; TYPE_3__* root_skb; int /*<<< orphan*/ * frag_data; } ;
struct TYPE_7__ {unsigned int size; int page_offset; } ;
typedef  TYPE_1__ skb_frag_t ;
struct TYPE_9__ {struct TYPE_9__* next; int /*<<< orphan*/ * data; } ;
struct TYPE_8__ {size_t nr_frags; TYPE_3__* frag_list; TYPE_1__* frags; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 unsigned int FUNC3 (TYPE_3__*) ; 
 TYPE_2__* FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (int) ; 

unsigned int FUNC6(unsigned int consumed, const u8 **data,
			  struct skb_seq_state *st)
{
	unsigned int block_limit, abs_offset = consumed + st->lower_offset;
	skb_frag_t *frag;

	if (FUNC5(abs_offset >= st->upper_offset))
		return 0;

next_skb:
	block_limit = FUNC3(st->cur_skb) + st->stepped_offset;

	if (abs_offset < block_limit && !st->frag_data) {
		*data = st->cur_skb->data + (abs_offset - st->stepped_offset);
		return block_limit - abs_offset;
	}

	if (st->frag_idx == 0 && !st->frag_data)
		st->stepped_offset += FUNC3(st->cur_skb);

	while (st->frag_idx < FUNC4(st->cur_skb)->nr_frags) {
		frag = &FUNC4(st->cur_skb)->frags[st->frag_idx];
		block_limit = frag->size + st->stepped_offset;

		if (abs_offset < block_limit) {
			if (!st->frag_data)
				st->frag_data = FUNC0(frag);

			*data = (u8 *) st->frag_data + frag->page_offset +
				(abs_offset - st->stepped_offset);

			return block_limit - abs_offset;
		}

		if (st->frag_data) {
			FUNC1(st->frag_data);
			st->frag_data = NULL;
		}

		st->frag_idx++;
		st->stepped_offset += frag->size;
	}

	if (st->frag_data) {
		FUNC1(st->frag_data);
		st->frag_data = NULL;
	}

	if (st->root_skb == st->cur_skb && FUNC2(st->root_skb)) {
		st->cur_skb = FUNC4(st->root_skb)->frag_list;
		st->frag_idx = 0;
		goto next_skb;
	} else if (st->cur_skb->next) {
		st->cur_skb = st->cur_skb->next;
		st->frag_idx = 0;
		goto next_skb;
	}

	return 0;
}