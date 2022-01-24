#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wait_queue_t ;
struct sock {scalar_t__ sk_state; int /*<<< orphan*/ * sk_sleep; void* sk_err; int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {int dummy; } ;
struct hidp_session {TYPE_3__* ctrl_sock; TYPE_2__* intr_sock; TYPE_5__* hid; TYPE_4__* input; int /*<<< orphan*/  terminate; } ;
struct TYPE_10__ {int vendor; int product; } ;
struct TYPE_6__ {int vendor; int product; } ;
struct TYPE_9__ {TYPE_1__ id; } ;
struct TYPE_8__ {int /*<<< orphan*/  file; struct sock* sk; } ;
struct TYPE_7__ {int /*<<< orphan*/  file; struct sock* sk; } ;

/* Variables and functions */
 scalar_t__ BT_CLOSED ; 
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct hidp_session*) ; 
 void* EUNATCH ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (struct hidp_session*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (struct hidp_session*) ; 
 int /*<<< orphan*/  FUNC9 (struct hidp_session*) ; 
 int /*<<< orphan*/  FUNC10 (struct hidp_session*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct hidp_session*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct hidp_session*) ; 
 int /*<<< orphan*/  hidp_session_sem ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (struct hidp_session*) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC25(void *arg)
{
	struct hidp_session *session = arg;
	struct sock *ctrl_sk = session->ctrl_sock->sk;
	struct sock *intr_sk = session->intr_sock->sk;
	struct sk_buff *skb;
	int vendor = 0x0000, product = 0x0000;
	wait_queue_t ctrl_wait, intr_wait;

	FUNC0("session %p", session);

	if (session->input) {
		vendor  = session->input->id.vendor;
		product = session->input->id.product;
	}

	if (session->hid) {
		vendor  = session->hid->vendor;
		product = session->hid->product;
	}

	FUNC4("khidpd_%04x%04x", vendor, product);
	FUNC20(current, -15);

	FUNC13(&ctrl_wait, current);
	FUNC13(&intr_wait, current);
	FUNC2(ctrl_sk->sk_sleep, &ctrl_wait);
	FUNC2(intr_sk->sk_sleep, &intr_wait);
	while (!FUNC3(&session->terminate)) {
		FUNC19(TASK_INTERRUPTIBLE);

		if (ctrl_sk->sk_state != BT_CONNECTED || intr_sk->sk_state != BT_CONNECTED)
			break;

		while ((skb = FUNC21(&ctrl_sk->sk_receive_queue))) {
			FUNC22(skb);
			FUNC10(session, skb);
		}

		while ((skb = FUNC21(&intr_sk->sk_receive_queue))) {
			FUNC22(skb);
			FUNC11(session, skb);
		}

		FUNC9(session);

		FUNC18();
	}
	FUNC19(TASK_RUNNING);
	FUNC17(intr_sk->sk_sleep, &intr_wait);
	FUNC17(ctrl_sk->sk_sleep, &ctrl_wait);

	FUNC5(&hidp_session_sem);

	FUNC8(session);

	if (session->input) {
		FUNC14(session->input);
		session->input = NULL;
	}

	if (session->hid) {
		FUNC7(session->hid);
		session->hid = NULL;
	}

	/* Wakeup user-space polling for socket errors */
	session->intr_sock->sk->sk_err = EUNATCH;
	session->ctrl_sock->sk->sk_err = EUNATCH;

	FUNC12(session);

	FUNC6(session->intr_sock->file);

	FUNC24(*(ctrl_sk->sk_sleep),
		(ctrl_sk->sk_state == BT_CLOSED), FUNC16(500));

	FUNC6(session->ctrl_sock->file);

	FUNC1(session);

	FUNC23(&hidp_session_sem);

	FUNC15(session);
	return 0;
}