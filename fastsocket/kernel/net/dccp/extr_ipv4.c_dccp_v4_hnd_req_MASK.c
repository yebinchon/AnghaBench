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
struct iphdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct dccp_hdr {int /*<<< orphan*/  dccph_dport; int /*<<< orphan*/  dccph_sport; } ;

/* Variables and functions */
 scalar_t__ DCCP_TIME_WAIT ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 struct sock* FUNC1 (struct sock*,struct sk_buff*,struct request_sock*,struct request_sock**) ; 
 int /*<<< orphan*/  dccp_hashinfo ; 
 struct dccp_hdr* FUNC2 (struct sk_buff*) ; 
 struct request_sock* FUNC3 (struct sock*,struct request_sock***,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct sock* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 

__attribute__((used)) static struct sock *FUNC10(struct sock *sk, struct sk_buff *skb)
{
	const struct dccp_hdr *dh = FUNC2(skb);
	const struct iphdr *iph = FUNC8(skb);
	struct sock *nsk;
	struct request_sock **prev;
	/* Find possible connection requests. */
	struct request_sock *req = FUNC3(sk, &prev,
						       dh->dccph_sport,
						       iph->saddr, iph->daddr);
	if (req != NULL)
		return FUNC1(sk, skb, req, prev);

	nsk = FUNC5(FUNC9(sk), &dccp_hashinfo,
				      iph->saddr, dh->dccph_sport,
				      iph->daddr, dh->dccph_dport,
				      FUNC4(skb));
	if (nsk != NULL) {
		if (nsk->sk_state != DCCP_TIME_WAIT) {
			FUNC0(nsk);
			return nsk;
		}
		FUNC7(FUNC6(nsk));
		return NULL;
	}

	return sk;
}