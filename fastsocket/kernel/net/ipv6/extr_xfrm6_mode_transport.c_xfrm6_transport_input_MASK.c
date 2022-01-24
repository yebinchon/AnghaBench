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
struct xfrm_state {int dummy; } ;
struct sk_buff {int data; scalar_t__ transport_header; scalar_t__ network_header; scalar_t__ len; } ;
struct ipv6hdr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  payload_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC6(struct xfrm_state *x, struct sk_buff *skb)
{
	int ihl = skb->data - FUNC5(skb);

	if (skb->transport_header != skb->network_header) {
		FUNC2(FUNC5(skb),
			FUNC3(skb), ihl);
		skb->network_header = skb->transport_header;
	}
	FUNC1(skb)->payload_len = FUNC0(skb->len + ihl -
					   sizeof(struct ipv6hdr));
	FUNC4(skb);
	return 0;
}