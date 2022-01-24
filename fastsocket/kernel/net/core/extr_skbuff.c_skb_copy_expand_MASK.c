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
struct sk_buff {scalar_t__ ip_summed; int csum_start; int transport_header; int network_header; int mac_header; scalar_t__ len; scalar_t__ head; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ CHECKSUM_PARTIAL ; 
 struct sk_buff* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct sk_buff const*) ; 
 scalar_t__ FUNC3 (struct sk_buff const*,int,scalar_t__,scalar_t__) ; 
 int FUNC4 (struct sk_buff const*) ; 
 scalar_t__ FUNC5 (struct sk_buff const*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 

struct sk_buff *FUNC8(const struct sk_buff *skb,
				int newheadroom, int newtailroom,
				gfp_t gfp_mask)
{
	/*
	 *	Allocate the copy buffer
	 */
	struct sk_buff *n = FUNC1(newheadroom + skb->len + newtailroom,
				      gfp_mask);
	int oldheadroom = FUNC4(skb);
	int head_copy_len, head_copy_off;
	int off;

	if (!n)
		return NULL;

	FUNC7(n, newheadroom);

	/* Set the tail pointer and length */
	FUNC6(n, skb->len);

	head_copy_len = oldheadroom;
	head_copy_off = 0;
	if (newheadroom <= head_copy_len)
		head_copy_len = newheadroom;
	else
		head_copy_off = newheadroom - head_copy_len;

	/* Copy the linear header and data. */
	if (FUNC3(skb, -head_copy_len, n->head + head_copy_off,
			  skb->len + head_copy_len))
		FUNC0();

	FUNC2(n, skb);

	off                  = newheadroom - oldheadroom;
	if (n->ip_summed == CHECKSUM_PARTIAL)
		n->csum_start += off;
#ifdef NET_SKBUFF_DATA_USES_OFFSET
	n->transport_header += off;
	n->network_header   += off;
	if (skb_mac_header_was_set(skb))
		n->mac_header += off;
#endif

	return n;
}