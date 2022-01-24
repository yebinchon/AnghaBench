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
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int dummy; } ;
struct ipv6hdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct dccp_hdr {int /*<<< orphan*/  dccph_dport; int /*<<< orphan*/  dccph_sport; } ;

/* Variables and functions */
 scalar_t__ DCCP_TIME_WAIT ; 
 struct sock* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct sock* FUNC2 (struct sock*,struct sk_buff*,struct request_sock*,struct request_sock**) ; 
 int /*<<< orphan*/  dccp_hashinfo ; 
 struct dccp_hdr* FUNC3 (struct sk_buff*) ; 
 struct request_sock* FUNC4 (struct sock*,struct request_sock***,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct ipv6hdr* FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 

__attribute__((used)) static struct sock *FUNC11(struct sock *sk,struct sk_buff *skb)
{
	const struct dccp_hdr *dh = FUNC3(skb);
	const struct ipv6hdr *iph = FUNC8(skb);
	struct sock *nsk;
	struct request_sock **prev;
	/* Find possible connection requests. */
	struct request_sock *req = FUNC4(sk, &prev,
							dh->dccph_sport,
							&iph->saddr,
							&iph->daddr,
							FUNC5(skb));
	if (req != NULL)
		return FUNC2(sk, skb, req, prev);

	nsk = FUNC0(FUNC10(sk), &dccp_hashinfo,
					 &iph->saddr, dh->dccph_sport,
					 &iph->daddr, FUNC9(dh->dccph_dport),
					 FUNC5(skb));
	if (nsk != NULL) {
		if (nsk->sk_state != DCCP_TIME_WAIT) {
			FUNC1(nsk);
			return nsk;
		}
		FUNC7(FUNC6(nsk));
		return NULL;
	}

	return sk;
}