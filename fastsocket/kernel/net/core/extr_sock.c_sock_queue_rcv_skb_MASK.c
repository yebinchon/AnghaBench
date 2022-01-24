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
struct sock {scalar_t__ sk_rcvbuf; int /*<<< orphan*/  (* sk_data_ready ) (struct sock*,int) ;int /*<<< orphan*/  sk_drops; int /*<<< orphan*/  sk_rmem_alloc; struct sk_buff_head sk_receive_queue; } ;
struct sk_buff {int len; scalar_t__ dropcount; int /*<<< orphan*/ * dev; int /*<<< orphan*/  truesize; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*,struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,struct sk_buff*) ; 

int FUNC10(struct sock *sk, struct sk_buff *skb)
{
	int err = 0;
	int skb_len;
	unsigned long flags;
	struct sk_buff_head *list = &sk->sk_receive_queue;

	if (FUNC1(&sk->sk_rmem_alloc) >= sk->sk_rcvbuf) {
		err = -ENOMEM;
		FUNC9(sk, skb);
		goto out;
	}

	err = FUNC2(sk, skb);
	if (err)
		goto out;

	if (!FUNC3(sk, skb->truesize)) {
		err = -ENOBUFS;
		goto out;
	}

	skb->dev = NULL;
	FUNC4(skb, sk);

	/* Cache the SKB length before we tack it onto the receive
	 * queue.  Once it is added it no longer belongs to us and
	 * may be freed by other threads of control pulling packets
	 * from the queue.
	 */
	skb_len = skb->len;

	FUNC6(&list->lock, flags);
	skb->dropcount = FUNC1(&sk->sk_drops);
	FUNC0(list, skb);
	FUNC7(&list->lock, flags);

	if (!FUNC5(sk, SOCK_DEAD))
		sk->sk_data_ready(sk, skb_len);
out:
	return err;
}