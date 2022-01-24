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
struct sock {scalar_t__ sk_state; int sk_shutdown; } ;
struct sk_buff {int len; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct iucv_sock {TYPE_1__ message_q; int /*<<< orphan*/  backlog_skb_q; } ;
struct af_iucv_trans_hdr {int dummy; } ;

/* Variables and functions */
 scalar_t__ IUCV_CONNECTED ; 
 int NET_RX_SUCCESS ; 
 int RCV_SHUTDOWN ; 
 struct iucv_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct sock *sk, struct sk_buff *skb)
{
	struct iucv_sock *iucv = FUNC0(sk);

	if (!iucv) {
		FUNC1(skb);
		return NET_RX_SUCCESS;
	}

	if (sk->sk_state != IUCV_CONNECTED) {
		FUNC1(skb);
		return NET_RX_SUCCESS;
	}

	if (sk->sk_shutdown & RCV_SHUTDOWN) {
		FUNC1(skb);
		return NET_RX_SUCCESS;
	}

		/* write stuff from iucv_msg to skb cb */
	if (skb->len < sizeof(struct af_iucv_trans_hdr)) {
		FUNC1(skb);
		return NET_RX_SUCCESS;
	}
	FUNC2(skb, sizeof(struct af_iucv_trans_hdr));
	FUNC6(skb);
	FUNC5(skb);
	FUNC8(&iucv->message_q.lock);
	if (FUNC3(&iucv->backlog_skb_q)) {
		if (FUNC7(sk, skb)) {
			/* handle rcv queue full */
			FUNC4(&iucv->backlog_skb_q, skb);
		}
	} else
		FUNC4(&FUNC0(sk)->backlog_skb_q, skb);
	FUNC9(&iucv->message_q.lock);
	return NET_RX_SUCCESS;
}