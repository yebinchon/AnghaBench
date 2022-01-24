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
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;} ;
struct sk_buff_head {int /*<<< orphan*/  lock; struct sk_buff* next; } ;
struct sk_buff {struct sk_buff* next; } ;
struct iucv_path {struct sock* private; } ;
struct iucv_message {int /*<<< orphan*/  tag; } ;
struct TYPE_2__ {struct sk_buff_head send_skb_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  CB_TAG_LEN ; 
 scalar_t__ IUCV_CLOSED ; 
 scalar_t__ IUCV_CLOSING ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 TYPE_1__* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 

__attribute__((used)) static void FUNC12(struct iucv_path *path,
				 struct iucv_message *msg)
{
	struct sock *sk = path->private;
	struct sk_buff *this = NULL;
	struct sk_buff_head *list = &FUNC4(sk)->send_skb_q;
	struct sk_buff *list_skb = list->next;
	unsigned long flags;

	FUNC2(sk);
	if (!FUNC8(list)) {
		FUNC9(&list->lock, flags);

		while (list_skb != (struct sk_buff *)list) {
			if (!FUNC7(&msg->tag, FUNC0(list_skb), CB_TAG_LEN)) {
				this = list_skb;
				break;
			}
			list_skb = list_skb->next;
		}
		if (this)
			FUNC1(this, list);

		FUNC10(&list->lock, flags);

		if (this) {
			FUNC6(this);
			/* wake up any process waiting for sending */
			FUNC5(sk);
		}
	}

	if (sk->sk_state == IUCV_CLOSING) {
		if (FUNC8(&FUNC4(sk)->send_skb_q)) {
			sk->sk_state = IUCV_CLOSED;
			sk->sk_state_change(sk);
		}
	}
	FUNC3(sk);

}