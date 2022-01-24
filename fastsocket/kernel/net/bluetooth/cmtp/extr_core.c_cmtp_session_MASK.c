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
typedef  int /*<<< orphan*/  wait_queue_t ;
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  sk_sleep; int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {int dummy; } ;
struct cmtp_session {int flags; TYPE_1__* sock; int /*<<< orphan*/  terminate; int /*<<< orphan*/  num; } ;
struct TYPE_2__ {int /*<<< orphan*/  file; struct sock* sk; } ;

/* Variables and functions */
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct cmtp_session*) ; 
 int CMTP_LOOPBACK ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (struct cmtp_session*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct cmtp_session*) ; 
 int /*<<< orphan*/  FUNC5 (struct cmtp_session*) ; 
 int /*<<< orphan*/  FUNC6 (struct cmtp_session*,struct sk_buff*) ; 
 int /*<<< orphan*/  cmtp_session_sem ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct cmtp_session*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(void *arg)
{
	struct cmtp_session *session = arg;
	struct sock *sk = session->sock->sk;
	struct sk_buff *skb;
	wait_queue_t wait;

	FUNC0("session %p", session);

	FUNC7("kcmtpd_ctr_%d", session->num);
	FUNC15(current, -15);

	FUNC10(&wait, current);
	FUNC2(sk->sk_sleep, &wait);
	while (!FUNC3(&session->terminate)) {
		FUNC14(TASK_INTERRUPTIBLE);

		if (sk->sk_state != BT_CONNECTED)
			break;

		while ((skb = FUNC16(&sk->sk_receive_queue))) {
			FUNC17(skb);
			FUNC6(session, skb);
		}

		FUNC5(session);

		FUNC13();
	}
	FUNC14(TASK_RUNNING);
	FUNC12(sk->sk_sleep, &wait);

	FUNC8(&cmtp_session_sem);

	if (!(session->flags & (1 << CMTP_LOOPBACK)))
		FUNC4(session);

	FUNC9(session->sock->file);

	FUNC1(session);

	FUNC18(&cmtp_session_sem);

	FUNC11(session);
	return 0;
}