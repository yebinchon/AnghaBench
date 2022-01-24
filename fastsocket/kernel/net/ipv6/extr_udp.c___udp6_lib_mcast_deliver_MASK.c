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
struct udphdr {int /*<<< orphan*/  source; int /*<<< orphan*/  dest; } ;
struct udp_table {struct udp_hslot* hash; } ;
struct udp_hslot {int /*<<< orphan*/  lock; int /*<<< orphan*/  head; } ;
struct sock {int /*<<< orphan*/  sk_rcvbuf; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sock* FUNC6 (int /*<<< orphan*/ *) ; 
 struct sock* FUNC7 (struct sock*) ; 
 scalar_t__ FUNC8 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 size_t FUNC13 (struct net*,int /*<<< orphan*/ ) ; 
 struct udphdr* FUNC14 (struct sk_buff*) ; 
 struct sock* FUNC15 (struct net*,struct sock*,int /*<<< orphan*/ ,struct in6_addr*,int /*<<< orphan*/ ,struct in6_addr*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC17(struct net *net, struct sk_buff *skb,
		struct in6_addr *saddr, struct in6_addr *daddr,
		struct udp_table *udptable)
{
	struct sock *sk, *sk2;
	const struct udphdr *uh = FUNC14(skb);
	struct udp_hslot *hslot = &udptable->hash[FUNC13(net, FUNC4(uh->dest))];
	int dif;

	FUNC11(&hslot->lock);
	sk = FUNC6(&hslot->head);
	dif = FUNC2(skb);
	sk = FUNC15(net, sk, uh->dest, daddr, uh->source, saddr, dif);
	if (!sk) {
		FUNC3(skb);
		goto out;
	}

	sk2 = sk;
	while ((sk2 = FUNC15(net, FUNC7(sk2), uh->dest, daddr,
					uh->source, saddr, dif))) {
		struct sk_buff *buff = FUNC9(skb, GFP_ATOMIC);
		if (buff) {
			FUNC0(sk2);
			if (!FUNC10(sk2))
				FUNC16(sk2, buff);
			else if (FUNC5(sk2, buff, sk2->sk_rcvbuf))
				FUNC3(buff);
			FUNC1(sk2);
		}
	}
	if (FUNC8(sk, skb, sk->sk_rcvbuf)) {
		FUNC3(skb);
		goto out;
	}
	FUNC0(sk);
	if (!FUNC10(sk))
		FUNC16(sk, skb);
	else if (FUNC5(sk, skb, sk->sk_rcvbuf))
		FUNC3(skb);
	FUNC1(sk);
out:
	FUNC12(&hslot->lock);
	return 0;
}