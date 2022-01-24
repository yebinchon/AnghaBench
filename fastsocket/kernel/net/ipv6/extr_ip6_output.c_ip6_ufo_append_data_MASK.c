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
struct sock {int /*<<< orphan*/  sk_write_queue; } ;
struct sk_buff {int /*<<< orphan*/  ip_summed; scalar_t__ csum; scalar_t__ network_header; scalar_t__ transport_header; } ;
struct TYPE_3__ {int /*<<< orphan*/  addr; } ;
struct rt6_info {TYPE_1__ rt6i_dst; } ;
struct frag_hdr {int /*<<< orphan*/  identification; } ;
struct TYPE_4__ {int gso_size; int /*<<< orphan*/  ip6_frag_id; int /*<<< orphan*/  gso_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_PARTIAL ; 
 int ENOMEM ; 
 unsigned int MSG_DONTWAIT ; 
 int /*<<< orphan*/  SKB_GSO_UDP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct frag_hdr*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct sock*,struct sk_buff*,int (*) (void*,char*,int,int,int,struct sk_buff*),void*,int) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 TYPE_2__* FUNC8 (struct sk_buff*) ; 
 struct sk_buff* FUNC9 (struct sock*,int,unsigned int,int*) ; 

__attribute__((used)) static inline int FUNC10(struct sock *sk,
			int getfrag(void *from, char *to, int offset, int len,
			int odd, struct sk_buff *skb),
			void *from, int length, int hh_len, int fragheaderlen,
			int transhdrlen, int mtu,unsigned int flags,
			struct rt6_info *rt)

{
	struct sk_buff *skb;
	struct frag_hdr fhdr;
	int err;

	/* There is support for UDP large send offload by network
	 * device, so create one single skb packet containing complete
	 * udp datagram
	 */
	if ((skb = FUNC4(&sk->sk_write_queue)) == NULL) {
		skb = FUNC9(sk,
			hh_len + fragheaderlen + transhdrlen + 20,
			(flags & MSG_DONTWAIT), &err);
		if (skb == NULL)
			return -ENOMEM;

		/* reserve space for Hardware header */
		FUNC6(skb, hh_len);

		/* create space for UDP/IP header */
		FUNC5(skb,fragheaderlen + transhdrlen);

		/* initialize network header pointer */
		FUNC7(skb);

		/* initialize protocol header pointer */
		skb->transport_header = skb->network_header + fragheaderlen;

		skb->csum = 0;

		FUNC0(&sk->sk_write_queue, skb);
	} else if (FUNC3(skb)) {
		goto append;
	}

	skb->ip_summed = CHECKSUM_PARTIAL;

	/* Specify the length of each IPv6 datagram fragment.
	 * It has to be a multiple of 8.
	 */
	FUNC8(skb)->gso_size = (mtu - fragheaderlen -
				     sizeof(struct frag_hdr)) & ~7;
	FUNC8(skb)->gso_type = SKB_GSO_UDP;
	FUNC1(&fhdr, &rt->rt6i_dst.addr);
	FUNC8(skb)->ip6_frag_id = fhdr.identification;

append:
	return FUNC2(sk, skb, getfrag, from,
				       (length - transhdrlen));
}