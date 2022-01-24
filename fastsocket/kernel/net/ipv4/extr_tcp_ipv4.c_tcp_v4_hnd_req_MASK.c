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
struct tcphdr {scalar_t__ ack; int /*<<< orphan*/  syn; int /*<<< orphan*/  rst; int /*<<< orphan*/  dest; int /*<<< orphan*/  source; } ;
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int dummy; } ;
struct iphdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct TYPE_2__ {int /*<<< orphan*/  opt; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ TCP_TIME_WAIT ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct sock* FUNC2 (struct sock*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 struct request_sock* FUNC3 (struct sock*,struct request_sock***,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct sock* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 struct sock* FUNC10 (struct sock*,struct sk_buff*,struct request_sock*,struct request_sock**) ; 
 int /*<<< orphan*/  tcp_hashinfo ; 
 struct tcphdr* FUNC11 (struct sk_buff*) ; 

__attribute__((used)) static struct sock *FUNC12(struct sock *sk, struct sk_buff *skb)
{
	struct tcphdr *th = FUNC11(skb);
	const struct iphdr *iph = FUNC8(skb);
	struct sock *nsk;
	struct request_sock **prev;
	/* Find possible connection requests. */
	struct request_sock *req = FUNC3(sk, &prev, th->source,
						       iph->saddr, iph->daddr);
	if (req)
		return FUNC10(sk, skb, req, prev);

	nsk = FUNC5(FUNC9(sk), &tcp_hashinfo, iph->saddr,
			th->source, iph->daddr, th->dest, FUNC4(skb));

	if (nsk) {
		if (nsk->sk_state != TCP_TIME_WAIT) {
			FUNC1(nsk);
			return nsk;
		}
		FUNC7(FUNC6(nsk));
		return NULL;
	}

#ifdef CONFIG_SYN_COOKIES
	if (!th->rst && !th->syn && th->ack)
		sk = cookie_v4_check(sk, skb, &(IPCB(skb)->opt));
#endif
	return sk;
}