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
typedef  int /*<<< orphan*/  u8 ;
struct udphdr {int /*<<< orphan*/  dest; int /*<<< orphan*/  source; } ;
struct udp_table {int dummy; } ;
struct sock {scalar_t__ sk_state; int sk_err; int /*<<< orphan*/  (* sk_error_report ) (struct sock*) ;} ;
struct sk_buff {int /*<<< orphan*/  dev; scalar_t__ data; } ;
struct in6_addr {int dummy; } ;
struct ipv6hdr {struct in6_addr daddr; struct in6_addr saddr; } ;
struct ipv6_pinfo {scalar_t__ recverr; } ;
struct inet6_skb_parm {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ TCP_ESTABLISHED ; 
 struct sock* FUNC0 (int /*<<< orphan*/ ,struct in6_addr*,int /*<<< orphan*/ ,struct in6_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct udp_table*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct ipv6_pinfo* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,struct sk_buff*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 

void FUNC9(struct sk_buff *skb, struct inet6_skb_parm *opt,
		    u8 type, u8 code, int offset, __be32 info,
		    struct udp_table *udptable)
{
	struct ipv6_pinfo *np;
	struct ipv6hdr *hdr = (struct ipv6hdr*)skb->data;
	struct in6_addr *saddr = &hdr->saddr;
	struct in6_addr *daddr = &hdr->daddr;
	struct udphdr *uh = (struct udphdr*)(skb->data+offset);
	struct sock *sk;
	int err;

	sk = FUNC0(FUNC1(skb->dev), daddr, uh->dest,
			       saddr, uh->source, FUNC3(skb), udptable);
	if (sk == NULL)
		return;

	np = FUNC4(sk);

	if (!FUNC2(type, code, &err) && !np->recverr)
		goto out;

	if (sk->sk_state != TCP_ESTABLISHED && !np->recverr)
		goto out;

	if (np->recverr)
		FUNC5(sk, skb, err, uh->dest, FUNC6(info), (u8 *)(uh+1));

	sk->sk_err = err;
	sk->sk_error_report(sk);
out:
	FUNC7(sk);
}