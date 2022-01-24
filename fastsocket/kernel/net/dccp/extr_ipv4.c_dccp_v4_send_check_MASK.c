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
struct sk_buff {int dummy; } ;
struct inet_sock {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct dccp_hdr {int /*<<< orphan*/  dccph_checksum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct dccp_hdr* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inet_sock* FUNC3 (struct sock*) ; 

void FUNC4(struct sock *sk, int unused, struct sk_buff *skb)
{
	const struct inet_sock *inet = FUNC3(sk);
	struct dccp_hdr *dh = FUNC1(skb);

	FUNC0(skb);
	dh->dccph_checksum = FUNC2(skb, inet->saddr, inet->daddr);
}