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
struct udphdr {scalar_t__ check; int /*<<< orphan*/  len; int /*<<< orphan*/  dest; int /*<<< orphan*/  source; } ;
struct udp_sock {scalar_t__ pending; scalar_t__ len; } ;
struct sock {int /*<<< orphan*/  sk_write_queue; } ;
struct sk_buff {scalar_t__ ip_summed; } ;
struct flowi {int /*<<< orphan*/  proto; int /*<<< orphan*/  fl6_dst; int /*<<< orphan*/  fl6_src; int /*<<< orphan*/  fl_ip_dport; int /*<<< orphan*/  fl_ip_sport; } ;
struct TYPE_3__ {struct flowi fl; } ;
struct inet_sock {TYPE_1__ cork; } ;
typedef  int /*<<< orphan*/  __wsum ;
struct TYPE_4__ {int /*<<< orphan*/  recverr; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ CHECKSUM_PARTIAL ; 
 scalar_t__ CSUM_MANGLED_0 ; 
 int ENOBUFS ; 
 int FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UDP_MIB_OUTDATAGRAMS ; 
 int /*<<< orphan*/  UDP_MIB_SNDBUFERRORS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 TYPE_2__* FUNC4 (struct sock*) ; 
 struct inet_sock* FUNC5 (struct sock*) ; 
 int FUNC6 (struct sock*) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,struct sk_buff*) ; 
 struct udphdr* FUNC11 (struct sk_buff*) ; 
 int FUNC12 (struct sock*) ; 
 struct udp_sock* FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC15(struct sock *sk)
{
	struct sk_buff *skb;
	struct udphdr *uh;
	struct udp_sock  *up = FUNC13(sk);
	struct inet_sock *inet = FUNC5(sk);
	struct flowi *fl;
	int err = 0;
	int is_udplite = FUNC0(sk);
	__wsum csum = 0;

	if (up->pending == AF_INET)
		return FUNC12(sk);

	fl = &inet->cork.fl;

	/* Grab the skbuff where UDP header space exists. */
	if ((skb = FUNC7(&sk->sk_write_queue)) == NULL)
		goto out;

	/*
	 * Create a UDP header
	 */
	uh = FUNC11(skb);
	uh->source = fl->fl_ip_sport;
	uh->dest = fl->fl_ip_dport;
	uh->len = FUNC3(up->len);
	uh->check = 0;

	if (is_udplite)
		csum = FUNC14(sk, skb);
	else if (skb->ip_summed == CHECKSUM_PARTIAL) { /* UDP hardware csum */
		FUNC9(sk, skb, &fl->fl6_src, &fl->fl6_dst,
				     up->len);
		goto send;
	} else
		csum = FUNC10(sk, skb);

	/* add protocol-dependent pseudo-header */
	uh->check = FUNC2(&fl->fl6_src, &fl->fl6_dst,
				    up->len, fl->proto, csum   );
	if (uh->check == 0)
		uh->check = CSUM_MANGLED_0;

send:
	err = FUNC6(sk);
	if (err) {
		if (err == -ENOBUFS && !FUNC4(sk)->recverr) {
			FUNC1(FUNC8(sk),
					    UDP_MIB_SNDBUFERRORS, is_udplite);
			err = 0;
		}
	} else
		FUNC1(FUNC8(sk),
				    UDP_MIB_OUTDATAGRAMS, is_udplite);
out:
	up->len = 0;
	up->pending = 0;
	return err;
}