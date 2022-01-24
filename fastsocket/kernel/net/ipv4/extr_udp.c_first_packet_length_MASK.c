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
struct sk_buff_head {int /*<<< orphan*/  lock; } ;
struct sock {struct sk_buff_head sk_receive_queue; } ;
struct sk_buff {unsigned int len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UDP_MIB_INERRORS ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff_head*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 struct sk_buff* FUNC9 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (struct sk_buff*) ; 

__attribute__((used)) static unsigned int FUNC15(struct sock *sk)
{
	struct sk_buff_head list_kill, *rcvq = &sk->sk_receive_queue;
	struct sk_buff *skb;
	unsigned int res;

	FUNC2(&list_kill);

	FUNC12(&rcvq->lock);
	while ((skb = FUNC9(rcvq)) != NULL &&
		FUNC14(skb)) {
		FUNC1(FUNC11(sk), UDP_MIB_INERRORS,
				 FUNC0(sk));
		FUNC5(skb, rcvq);
		FUNC4(&list_kill, skb);
	}
	res = skb ? skb->len : 0;
	FUNC13(&rcvq->lock);

	if (!FUNC10(&list_kill)) {
		FUNC6(sk);
		FUNC3(&list_kill);
		FUNC8(sk);
		FUNC7(sk);
	}
	return res;
}