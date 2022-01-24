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
struct sk_buff {int len; } ;
struct TYPE_3__ {int overhead; int tsize; int cell_align; int cell_log; int size_log; } ;
struct qdisc_size_table {int* data; TYPE_1__ szopts; } ;
struct TYPE_4__ {int pkt_len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 TYPE_2__* FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int) ; 

void FUNC3(struct sk_buff *skb, struct qdisc_size_table *stab)
{
	int pkt_len, slot;

	pkt_len = skb->len + stab->szopts.overhead;
	if (FUNC2(!stab->szopts.tsize))
		goto out;

	slot = pkt_len + stab->szopts.cell_align;
	if (FUNC2(slot < 0))
		slot = 0;

	slot >>= stab->szopts.cell_log;
	if (FUNC0(slot < stab->szopts.tsize))
		pkt_len = stab->data[slot];
	else
		pkt_len = stab->data[stab->szopts.tsize - 1] *
				(slot / stab->szopts.tsize) +
				stab->data[slot % stab->szopts.tsize];

	pkt_len <<= stab->szopts.size_log;
out:
	if (FUNC2(pkt_len < 1))
		pkt_len = 1;
	FUNC1(skb)->pkt_len = pkt_len;
}