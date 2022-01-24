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
struct sock {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  ip_summed; scalar_t__ csum; scalar_t__ network_header; scalar_t__ transport_header; } ;
struct TYPE_2__ {int gso_size; int /*<<< orphan*/  gso_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_PARTIAL ; 
 unsigned int MSG_DONTWAIT ; 
 int /*<<< orphan*/  SKB_GSO_UDP ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*,struct sk_buff*) ; 
 int FUNC1 (struct sock*,struct sk_buff*,int (*) (void*,char*,int,int,int,struct sk_buff*),void*,int) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 TYPE_1__* FUNC7 (struct sk_buff*) ; 
 struct sk_buff* FUNC8 (struct sock*,int,unsigned int,int*) ; 

__attribute__((used)) static inline int FUNC9(struct sock *sk,
			struct sk_buff_head *queue,
			int getfrag(void *from, char *to, int offset, int len,
			       int odd, struct sk_buff *skb),
			void *from, int length, int hh_len, int fragheaderlen,
			int transhdrlen, int maxfraglen, unsigned int flags)
{
	struct sk_buff *skb;
	int err;

	/* There is support for UDP fragmentation offload by network
	 * device, so create one single skb packet containing complete
	 * udp datagram
	 */
	if ((skb = FUNC3(queue)) == NULL) {
		skb = FUNC8(sk,
			hh_len + fragheaderlen + transhdrlen + 20,
			(flags & MSG_DONTWAIT), &err);

		if (skb == NULL)
			return err;

		/* reserve space for Hardware header */
		FUNC5(skb, hh_len);

		/* create space for UDP/IP header */
		FUNC4(skb, fragheaderlen + transhdrlen);

		/* initialize network header pointer */
		FUNC6(skb);

		/* initialize protocol header pointer */
		skb->transport_header = skb->network_header + fragheaderlen;

		skb->csum = 0;


		FUNC0(queue, skb);
	} else if (FUNC2(skb)) {
		goto append;
	}

	skb->ip_summed = CHECKSUM_PARTIAL;
	/* specify the length of each IP datagram fragment */
	FUNC7(skb)->gso_size = maxfraglen - fragheaderlen;
	FUNC7(skb)->gso_type = SKB_GSO_UDP;

append:
	return FUNC1(sk, skb, getfrag, from,
				       (length - transhdrlen));
}