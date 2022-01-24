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
struct TYPE_2__ {int /*<<< orphan*/  dep_map; } ;
struct sock {int /*<<< orphan*/  sk_drops; int /*<<< orphan*/  sk_rcvbuf; TYPE_1__ sk_lock; } ;
struct sk_buff {int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int NET_RX_SUCCESS ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC9 (struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC10 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 

int FUNC13(struct sock *sk, struct sk_buff *skb, const int nested)
{
	int rc = NET_RX_SUCCESS;

	if (FUNC9(sk, skb))
		goto discard_and_relse;

	skb->dev = NULL;

	if (FUNC10(sk, skb, sk->sk_rcvbuf)) {
		FUNC0(&sk->sk_drops);
		goto discard_and_relse;
	}
	if (nested)
		FUNC2(sk);
	else
		FUNC1(sk);
	if (!FUNC11(sk)) {
		/*
		 * trylock + unlock semantics:
		 */
		FUNC5(&sk->sk_lock.dep_map, 0, 1, _RET_IP_);

		rc = FUNC8(sk, skb);

		FUNC6(&sk->sk_lock.dep_map, 1, _RET_IP_);
	} else if (FUNC7(sk, skb, sk->sk_rcvbuf)) {
		FUNC3(sk);
		FUNC0(&sk->sk_drops);
		goto discard_and_relse;
	}

	FUNC3(sk);
out:
	FUNC12(sk);
	return rc;
discard_and_relse:
	FUNC4(skb);
	goto out;
}