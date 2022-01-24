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
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 struct sk_buff* FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (unsigned int,unsigned int) ; 

__attribute__((used)) static struct sk_buff *
FUNC3(unsigned int inst_size, unsigned int pkt_size)
{
	struct sk_buff *skb;
	unsigned int n;

	/* alloc skb which should be big enough for a whole multipart
	 * message.  WARNING: has to be <= 128k due to slab restrictions */

	n = FUNC2(inst_size, pkt_size);
	skb = FUNC1(n, GFP_ATOMIC);
	if (!skb) {
		FUNC0("nfnetlink_log: can't alloc whole buffer (%u bytes)\n",
			inst_size);

		if (n > pkt_size) {
			/* try to allocate only as much as we need for current
			 * packet */

			skb = FUNC1(pkt_size, GFP_ATOMIC);
			if (!skb)
				FUNC0("nfnetlink_log: can't even alloc %u "
				       "bytes\n", pkt_size);
		}
	}

	return skb;
}