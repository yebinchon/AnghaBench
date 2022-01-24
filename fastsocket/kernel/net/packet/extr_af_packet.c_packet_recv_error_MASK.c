#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  ee_errno; } ;
struct sock_exterr_skb {TYPE_3__ ee; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct sock {TYPE_1__ sk_error_queue; int /*<<< orphan*/  (* sk_error_report ) (struct sock*) ;int /*<<< orphan*/  sk_err; } ;
struct sk_buff {int len; } ;
struct msghdr {int /*<<< orphan*/  msg_flags; int /*<<< orphan*/  msg_iov; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  MSG_ERRQUEUE ; 
 int /*<<< orphan*/  MSG_TRUNC ; 
 int /*<<< orphan*/  PACKET_TX_TIMESTAMP ; 
 struct sock_exterr_skb* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  SOL_PACKET ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct msghdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_3__*) ; 
 int FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC4 (TYPE_1__*) ; 
 struct sk_buff* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct msghdr*,struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 

__attribute__((used)) static int FUNC10(struct sock *sk, struct msghdr *msg, int len)
{
	struct sock_exterr_skb *serr;
	struct sk_buff *skb, *skb2;
	int copied, err;

	err = -EAGAIN;
	skb = FUNC4(&sk->sk_error_queue);
	if (skb == NULL)
		goto out;

	copied = skb->len;
	if (copied > len) {
		msg->msg_flags |= MSG_TRUNC;
		copied = len;
	}
	err = FUNC3(skb, 0, msg->msg_iov, copied);
	if (err)
		goto out_free_skb;

	FUNC6(msg, sk, skb);

	serr = FUNC0(skb);
	FUNC2(msg, SOL_PACKET, PACKET_TX_TIMESTAMP,
		 sizeof(serr->ee), &serr->ee);

	msg->msg_flags |= MSG_ERRQUEUE;
	err = copied;

	/* Reset and regenerate socket error */
	FUNC7(&sk->sk_error_queue.lock);
	sk->sk_err = 0;
	if ((skb2 = FUNC5(&sk->sk_error_queue)) != NULL) {
		sk->sk_err = FUNC0(skb2)->ee.ee_errno;
		FUNC8(&sk->sk_error_queue.lock);
		sk->sk_error_report(sk);
	} else
		FUNC8(&sk->sk_error_queue.lock);

out_free_skb:
	FUNC1(skb);
out:
	return err;
}