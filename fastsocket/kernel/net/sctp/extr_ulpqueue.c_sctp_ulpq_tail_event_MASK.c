#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff_head {int dummy; } ;
struct sock {int sk_shutdown; int /*<<< orphan*/  (* sk_data_ready ) (struct sock*,int /*<<< orphan*/ ) ;struct sk_buff_head sk_receive_queue; } ;
struct sk_buff {scalar_t__ prev; } ;
struct sctp_ulpq {scalar_t__ pd_mode; TYPE_2__* asoc; } ;
struct sctp_ulpevent {int msg_flags; } ;
struct TYPE_6__ {struct sk_buff_head pd_lobby; scalar_t__ frag_interleave; int /*<<< orphan*/  pd_mode; int /*<<< orphan*/  subscribe; } ;
struct TYPE_4__ {struct sock* sk; } ;
struct TYPE_5__ {TYPE_1__ base; } ;

/* Variables and functions */
 int MSG_EOR ; 
 int MSG_NOTIFICATION ; 
 int RCV_SHUTDOWN ; 
 int SCTP_DATA_FRAG_MASK ; 
 int SCTP_DATA_NOT_FRAG ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*,struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC2 (struct sctp_ulpevent*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff_head*) ; 
 TYPE_3__* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff_head*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_ulpevent*) ; 
 int /*<<< orphan*/  FUNC7 (struct sctp_ulpevent*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sctp_ulpq*) ; 
 scalar_t__ FUNC9 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,int /*<<< orphan*/ ) ; 

int FUNC11(struct sctp_ulpq *ulpq, struct sctp_ulpevent *event)
{
	struct sock *sk = ulpq->asoc->base.sk;
	struct sk_buff_head *queue, *skb_list;
	struct sk_buff *skb = FUNC2(event);
	int clear_pd = 0;

	skb_list = (struct sk_buff_head *) skb->prev;

	/* If the socket is just going to throw this away, do not
	 * even try to deliver it.
	 */
	if (FUNC9(sk, SOCK_DEAD) || (sk->sk_shutdown & RCV_SHUTDOWN))
		goto out_free;

	/* Check if the user wishes to receive this event.  */
	if (!FUNC7(event, &FUNC4(sk)->subscribe))
		goto out_free;

	/* If we are in partial delivery mode, post to the lobby until
	 * partial delivery is cleared, unless, of course _this_ is
	 * the association the cause of the partial delivery.
	 */

	if (FUNC1(&FUNC4(sk)->pd_mode) == 0) {
		queue = &sk->sk_receive_queue;
	} else {
		if (ulpq->pd_mode) {
			/* If the association is in partial delivery, we
			 * need to finish delivering the partially processed
			 * packet before passing any other data.  This is
			 * because we don't truly support stream interleaving.
			 */
			if ((event->msg_flags & MSG_NOTIFICATION) ||
			    (SCTP_DATA_NOT_FRAG ==
				    (event->msg_flags & SCTP_DATA_FRAG_MASK)))
				queue = &FUNC4(sk)->pd_lobby;
			else {
				clear_pd = event->msg_flags & MSG_EOR;
				queue = &sk->sk_receive_queue;
			}
		} else {
			/*
			 * If fragment interleave is enabled, we
			 * can queue this to the recieve queue instead
			 * of the lobby.
			 */
			if (FUNC4(sk)->frag_interleave)
				queue = &sk->sk_receive_queue;
			else
				queue = &FUNC4(sk)->pd_lobby;
		}
	}

	/* If we are harvesting multiple skbs they will be
	 * collected on a list.
	 */
	if (skb_list)
		FUNC5(skb_list, queue);
	else
		FUNC0(queue, skb);

	/* Did we just complete partial delivery and need to get
	 * rolling again?  Move pending data to the receive
	 * queue.
	 */
	if (clear_pd)
		FUNC8(ulpq);

	if (queue == &sk->sk_receive_queue)
		sk->sk_data_ready(sk, 0);
	return 1;

out_free:
	if (skb_list)
		FUNC3(skb_list);
	else
		FUNC6(event);

	return 0;
}