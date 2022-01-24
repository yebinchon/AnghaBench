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
typedef  struct sk_buff {unsigned long data; unsigned long transport_header; unsigned long network_header; unsigned long mac_header; } const sk_buff ;
struct TYPE_2__ {int /*<<< orphan*/  gso_type; int /*<<< orphan*/  gso_segs; int /*<<< orphan*/  gso_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff const*,struct sk_buff const*) ; 
 scalar_t__ FUNC1 (struct sk_buff const*) ; 
 TYPE_1__* FUNC2 (struct sk_buff const*) ; 

__attribute__((used)) static void FUNC3(struct sk_buff *new, const struct sk_buff *old)
{
#ifndef NET_SKBUFF_DATA_USES_OFFSET
	/*
	 *	Shift between the two data areas in bytes
	 */
	unsigned long offset = new->data - old->data;
#endif

	FUNC0(new, old);

#ifndef NET_SKBUFF_DATA_USES_OFFSET
	/* {transport,network,mac}_header are relative to skb->head */
	new->transport_header += offset;
	new->network_header   += offset;
	if (FUNC1(new))
		new->mac_header	      += offset;
#endif
	FUNC2(new)->gso_size = FUNC2(old)->gso_size;
	FUNC2(new)->gso_segs = FUNC2(old)->gso_segs;
	FUNC2(new)->gso_type = FUNC2(old)->gso_type;
}