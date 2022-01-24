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
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  pkt_type; int /*<<< orphan*/  protocol; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_DNA_RT ; 
 int /*<<< orphan*/  PACKET_OUTGOING ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct sock*) ; 

struct sk_buff *FUNC4(struct sock *sk, int size, gfp_t pri)
{
	struct sk_buff *skb;
	int hdr = 64;

	if ((skb = FUNC0(size + hdr, pri)) == NULL)
		return NULL;

	skb->protocol = FUNC1(ETH_P_DNA_RT);
	skb->pkt_type = PACKET_OUTGOING;

	if (sk)
		FUNC3(skb, sk);

	FUNC2(skb, hdr);

	return skb;
}