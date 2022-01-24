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
struct tcphdr {scalar_t__ dest; int /*<<< orphan*/  source; int /*<<< orphan*/  fin; int /*<<< orphan*/  ack; int /*<<< orphan*/  rst; scalar_t__ syn; } ;
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct iphdr {scalar_t__ daddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  protocol; } ;
typedef  int /*<<< orphan*/  _hdr ;
typedef  scalar_t__ __be32 ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  NFT_LOOKUP_LISTENER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct sock* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tcphdr* FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tcphdr*) ; 
 int /*<<< orphan*/  tcp_death_row ; 

__attribute__((used)) static struct sock *
FUNC8(struct sk_buff *skb, __be32 laddr, __be16 lport,
			struct sock *sk)
{
	const struct iphdr *iph = FUNC4(skb);
	struct tcphdr _hdr, *hp;

	hp = FUNC7(skb, FUNC5(skb), sizeof(_hdr), &_hdr);
	if (hp == NULL) {
		FUNC3(FUNC1(sk));
		return NULL;
	}

	if (hp->syn && !hp->rst && !hp->ack && !hp->fin) {
		/* SYN to a TIME_WAIT socket, we'd rather redirect it
		 * to a listener socket if there's one */
		struct sock *sk2;

		sk2 = FUNC6(FUNC0(skb->dev), iph->protocol,
					    iph->saddr, laddr ? laddr : iph->daddr,
					    hp->source, lport ? lport : hp->dest,
					    skb->dev, NFT_LOOKUP_LISTENER);
		if (sk2) {
			FUNC2(FUNC1(sk), &tcp_death_row);
			FUNC3(FUNC1(sk));
			sk = sk2;
		}
	}

	return sk;
}