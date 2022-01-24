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
struct sock {scalar_t__ sk_type; int sk_rcvbuf; } ;
struct sk_buff {unsigned int len; int truesize; int /*<<< orphan*/ * data; } ;
struct iucv_path {int dummy; } ;
struct iucv_message {int flags; int /*<<< orphan*/  rmmsg; int /*<<< orphan*/  class; } ;
struct TYPE_4__ {int /*<<< orphan*/  backlog_skb_q; } ;
struct TYPE_3__ {int (* message_receive ) (struct iucv_path*,struct iucv_message*,int,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* path_sever ) (struct iucv_path*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  CB_TRGCLS_LEN ; 
 int IUCV_IPRMDATA ; 
 scalar_t__ SOCK_STREAM ; 
 int /*<<< orphan*/  iprm_shutdown ; 
 int FUNC1 (struct sock*,struct sk_buff*,unsigned int) ; 
 unsigned int FUNC2 (struct iucv_message*) ; 
 TYPE_2__* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* pr_iucv ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (struct sock*,struct sk_buff*) ; 
 int FUNC12 (struct iucv_path*,struct iucv_message*,int,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct iucv_path*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct sock *sk, struct sk_buff *skb,
				 struct iucv_path *path,
				 struct iucv_message *msg)
{
	int rc;
	unsigned int len;

	len = FUNC2(msg);

	/* store msg target class in the second 4 bytes of skb ctrl buffer */
	/* Note: the first 4 bytes are reserved for msg tag */
	FUNC6(FUNC0(skb), &msg->class, CB_TRGCLS_LEN);

	/* check for special IPRM messages (e.g. iucv_sock_shutdown) */
	if ((msg->flags & IUCV_IPRMDATA) && len > 7) {
		if (FUNC5(msg->rmmsg, iprm_shutdown, 8) == 0) {
			skb->data = NULL;
			skb->len = 0;
		}
	} else {
		rc = pr_iucv->message_receive(path, msg,
					      msg->flags & IUCV_IPRMDATA,
					      skb->data, len, NULL);
		if (rc) {
			FUNC4(skb);
			return;
		}
		/* we need to fragment iucv messages for SOCK_STREAM only;
		 * for SOCK_SEQPACKET, it is only relevant if we support
		 * record segmentation using MSG_EOR (see also recvmsg()) */
		if (sk->sk_type == SOCK_STREAM &&
		    skb->truesize >= sk->sk_rcvbuf / 4) {
			rc = FUNC1(sk, skb, len);
			FUNC4(skb);
			skb = NULL;
			if (rc) {
				pr_iucv->path_sever(path, NULL);
				return;
			}
			skb = FUNC7(&FUNC3(sk)->backlog_skb_q);
		} else {
			FUNC10(skb);
			FUNC9(skb);
			skb->len = len;
		}
	}

	if (FUNC11(sk, skb))
		FUNC8(&FUNC3(sk)->backlog_skb_q, skb);
}