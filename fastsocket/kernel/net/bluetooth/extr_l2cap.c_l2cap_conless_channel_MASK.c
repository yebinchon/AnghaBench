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
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {scalar_t__ len; } ;
struct l2cap_conn {int /*<<< orphan*/  src; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {scalar_t__ imtu; } ;

/* Variables and functions */
 scalar_t__ BT_BOUND ; 
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct sock*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sock* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,struct sk_buff*) ; 

__attribute__((used)) static inline int FUNC6(struct l2cap_conn *conn, __le16 psm, struct sk_buff *skb)
{
	struct sock *sk;

	sk = FUNC3(0, psm, conn->src);
	if (!sk)
		goto drop;

	FUNC0("sk %p, len %d", sk, skb->len);

	if (sk->sk_state != BT_BOUND && sk->sk_state != BT_CONNECTED)
		goto drop;

	if (FUNC4(sk)->imtu < skb->len)
		goto drop;

	if (!FUNC5(sk, skb))
		goto done;

drop:
	FUNC2(skb);

done:
	if (sk)
		FUNC1(sk);
	return 0;
}