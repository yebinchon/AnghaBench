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
typedef  scalar_t__ u32 ;
struct tcphdr {int doff; scalar_t__ fin; scalar_t__ syn; int /*<<< orphan*/  seq; int /*<<< orphan*/  ack_seq; scalar_t__ ack; scalar_t__ rst; } ;
struct tcp_md5sig_key {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_2__ {int /*<<< orphan*/  daddr; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct tcphdr* FUNC3 (struct sk_buff*) ; 
 struct tcp_md5sig_key* FUNC4 (struct sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tcp_md5sig_key*,int) ; 

__attribute__((used)) static void FUNC6(struct sock *sk, struct sk_buff *skb)
{
	struct tcphdr *th = FUNC3(skb);
	u32 seq = 0, ack_seq = 0;
	struct tcp_md5sig_key *key = NULL;

	if (th->rst)
		return;

	if (!FUNC1(skb))
		return;

#ifdef CONFIG_TCP_MD5SIG
	if (sk)
		key = tcp_v6_md5_do_lookup(sk, &ipv6_hdr(skb)->daddr);
#endif

	if (th->ack)
		seq = FUNC2(th->ack_seq);
	else
		ack_seq = FUNC2(th->seq) + th->syn + th->fin + skb->len -
			  (th->doff << 2);

	FUNC5(skb, seq, ack_seq, 0, 0, key, 1);
}