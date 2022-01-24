#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct iucv_message {int dummy; } ;
struct sock_msg_q {int /*<<< orphan*/  list; struct iucv_message msg; struct iucv_path* path; } ;
struct sock {int sk_shutdown; int sk_rcvbuf; int /*<<< orphan*/  sk_rmem_alloc; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
struct iucv_sock {TYPE_1__ message_q; int /*<<< orphan*/  backlog_skb_q; } ;
struct iucv_path {struct sock* private; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* message_reject ) (struct iucv_path*,struct iucv_message*) ;} ;

/* Variables and functions */
 int GFP_ATOMIC ; 
 int GFP_DMA ; 
 int RCV_SHUTDOWN ; 
 struct sk_buff* FUNC0 (scalar_t__,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct iucv_message*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct sk_buff*,struct iucv_path*,struct iucv_message*) ; 
 struct iucv_sock* FUNC4 (struct sock*) ; 
 struct sock_msg_q* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_2__* pr_iucv ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct iucv_path*,struct iucv_message*) ; 

__attribute__((used)) static void FUNC12(struct iucv_path *path, struct iucv_message *msg)
{
	struct sock *sk = path->private;
	struct iucv_sock *iucv = FUNC4(sk);
	struct sk_buff *skb;
	struct sock_msg_q *save_msg;
	int len;

	if (sk->sk_shutdown & RCV_SHUTDOWN) {
		pr_iucv->message_reject(path, msg);
		return;
	}

	FUNC9(&iucv->message_q.lock);

	if (!FUNC7(&iucv->message_q.list) ||
	    !FUNC8(&iucv->backlog_skb_q))
		goto save_message;

	len = FUNC1(&sk->sk_rmem_alloc);
	len += FUNC2(msg) + sizeof(struct sk_buff);
	if (len > sk->sk_rcvbuf)
		goto save_message;

	skb = FUNC0(FUNC2(msg), GFP_ATOMIC | GFP_DMA);
	if (!skb)
		goto save_message;

	FUNC3(sk, skb, path, msg);
	goto out_unlock;

save_message:
	save_msg = FUNC5(sizeof(struct sock_msg_q), GFP_ATOMIC | GFP_DMA);
	if (!save_msg)
		goto out_unlock;
	save_msg->path = path;
	save_msg->msg = *msg;

	FUNC6(&save_msg->list, &iucv->message_q.list);

out_unlock:
	FUNC10(&iucv->message_q.lock);
}