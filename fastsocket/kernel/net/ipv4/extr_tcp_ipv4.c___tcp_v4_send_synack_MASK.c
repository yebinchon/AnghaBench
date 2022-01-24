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
struct tcphdr {int /*<<< orphan*/  check; } ;
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  csum; int /*<<< orphan*/  len; } ;
struct request_sock {int dummy; } ;
struct inet_request_sock {int /*<<< orphan*/  opt; int /*<<< orphan*/  rmt_addr; int /*<<< orphan*/  loc_addr; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tcphdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dst_entry*) ; 
 struct dst_entry* FUNC2 (struct sock*,struct request_sock*) ; 
 struct inet_request_sock* FUNC3 (struct request_sock*) ; 
 int FUNC4 (struct sk_buff*,struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 struct tcphdr* FUNC6 (struct sk_buff*) ; 
 struct sk_buff* FUNC7 (struct sock*,struct dst_entry*,struct request_sock*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct sock *sk, struct request_sock *req,
				struct dst_entry *dst)
{
	const struct inet_request_sock *ireq = FUNC3(req);
	int err = -1;
	struct sk_buff * skb;

	/* First, grab a route. */
	if (!dst && (dst = FUNC2(sk, req)) == NULL)
		return -1;

	skb = FUNC7(sk, dst, req);

	if (skb) {
		struct tcphdr *th = FUNC6(skb);

		th->check = FUNC8(skb->len,
					 ireq->loc_addr,
					 ireq->rmt_addr,
					 FUNC0(th, skb->len,
						      skb->csum));

		err = FUNC4(skb, sk, ireq->loc_addr,
					    ireq->rmt_addr,
					    ireq->opt);
		err = FUNC5(err);
	}

	FUNC1(dst);
	return err;
}