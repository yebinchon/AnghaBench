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
struct udphdr {scalar_t__ check; int /*<<< orphan*/  len; int /*<<< orphan*/  dest; int /*<<< orphan*/  source; } ;
struct sock {scalar_t__ sk_no_check; int /*<<< orphan*/  sk_protocol; } ;
struct sk_buff {int len; scalar_t__ ip_summed; struct sock* sk; } ;
struct rtable {int /*<<< orphan*/  rt_src; } ;
struct inet_sock {int /*<<< orphan*/  recverr; int /*<<< orphan*/  sport; } ;
typedef  int /*<<< orphan*/  __wsum ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ CHECKSUM_NONE ; 
 scalar_t__ CHECKSUM_PARTIAL ; 
 scalar_t__ CSUM_MANGLED_0 ; 
 int ENOBUFS ; 
 int FUNC0 (struct sock*) ; 
 scalar_t__ UDP_CSUM_NOXMIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UDP_MIB_OUTDATAGRAMS ; 
 int /*<<< orphan*/  UDP_MIB_SNDBUFERRORS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct inet_sock* FUNC4 (struct sock*) ; 
 int FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 int FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 struct udphdr* FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC13(struct sk_buff *skb, __be32 daddr, __be32 dport)
{
	struct sock *sk = skb->sk;
	struct inet_sock *inet = FUNC4(sk);
	struct udphdr *uh;
	struct rtable *rt = (struct rtable *)FUNC6(skb);
	int err = 0;
	int is_udplite = FUNC0(sk);
	int offset = FUNC7(skb);
	int len = skb->len - offset;
	__wsum csum = 0;

	/*
	 * Create a UDP header
	 */
	uh = FUNC11(skb);
	uh->source = inet->sport;
	uh->dest = dport;
	uh->len = FUNC3(len);
	uh->check = 0;

	if (is_udplite)  				 /*     UDP-Lite      */
		csum = FUNC12(skb);

	else if (sk->sk_no_check == UDP_CSUM_NOXMIT) {   /* UDP csum disabled */

		skb->ip_summed = CHECKSUM_NONE;
		goto send;

	} else if (skb->ip_summed == CHECKSUM_PARTIAL) { /* UDP hardware csum */

		FUNC9(skb, rt->rt_src, daddr);
		goto send;

	} else
		csum = FUNC10(skb);

	/* add protocol-dependent pseudo-header */
	uh->check = FUNC2(rt->rt_src, daddr, len,
				      sk->sk_protocol, csum);
	if (uh->check == 0)
		uh->check = CSUM_MANGLED_0;

send:
	err = FUNC5(skb);
	if (err) {
		if (err == -ENOBUFS && !inet->recverr) {
			FUNC1(FUNC8(sk),
					   UDP_MIB_SNDBUFERRORS, is_udplite);
			err = 0;
		}
	} else
		FUNC1(FUNC8(sk),
				   UDP_MIB_OUTDATAGRAMS, is_udplite);
	return err;
}