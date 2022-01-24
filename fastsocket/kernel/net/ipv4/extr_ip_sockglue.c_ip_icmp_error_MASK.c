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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int ee_errno; scalar_t__ ee_data; int /*<<< orphan*/  ee_info; scalar_t__ ee_pad; int /*<<< orphan*/  ee_code; int /*<<< orphan*/  ee_type; int /*<<< orphan*/  ee_origin; } ;
struct sock_exterr_skb {int /*<<< orphan*/  port; int /*<<< orphan*/ * addr_offset; TYPE_1__ ee; } ;
struct sock {int dummy; } ;
struct sk_buff {int data; } ;
struct iphdr {int /*<<< orphan*/  daddr; } ;
struct inet_sock {int /*<<< orphan*/  recverr; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_4__ {int /*<<< orphan*/  code; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sock_exterr_skb* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  SO_EE_ORIGIN_ICMP ; 
 TYPE_2__* FUNC1 (struct sk_buff*) ; 
 struct inet_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/ * FUNC6 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct sock*,struct sk_buff*) ; 

void FUNC9(struct sock *sk, struct sk_buff *skb, int err,
		   __be16 port, u32 info, u8 *payload)
{
	struct inet_sock *inet = FUNC2(sk);
	struct sock_exterr_skb *serr;

	if (!inet->recverr)
		return;

	skb = FUNC4(skb, GFP_ATOMIC);
	if (!skb)
		return;

	serr = FUNC0(skb);
	serr->ee.ee_errno = err;
	serr->ee.ee_origin = SO_EE_ORIGIN_ICMP;
	serr->ee.ee_type = FUNC1(skb)->type;
	serr->ee.ee_code = FUNC1(skb)->code;
	serr->ee.ee_pad = 0;
	serr->ee.ee_info = info;
	serr->ee.ee_data = 0;
	serr->addr_offset = (u8 *)&(((struct iphdr *)(FUNC1(skb) + 1))->daddr) -
				   FUNC5(skb);
	serr->port = port;

	if (FUNC6(skb, payload - skb->data) != NULL) {
		FUNC7(skb);
		if (FUNC8(sk, skb) == 0)
			return;
	}
	FUNC3(skb);
}