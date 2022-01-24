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
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  sk_sleep; int /*<<< orphan*/  sk_err; int /*<<< orphan*/  sk_write_queue; int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct bnep_session {TYPE_1__* sock; int /*<<< orphan*/  killed; struct net_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  file; struct sock* sk; } ;

/* Variables and functions */
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  EUNATCH ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (struct bnep_session*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct bnep_session*,struct sk_buff*) ; 
 int /*<<< orphan*/  bnep_session_sem ; 
 scalar_t__ FUNC5 (struct bnep_session*,struct sk_buff*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC21(void *arg)
{
	struct bnep_session *s = arg;
	struct net_device *dev = s->dev;
	struct sock *sk = s->sock->sk;
	struct sk_buff *skb;
	wait_queue_t wait;

	FUNC0("");

	FUNC6("kbnepd %s", dev->name);
	FUNC15(current, -15);

	FUNC10(&wait, current);
	FUNC2(sk->sk_sleep, &wait);
	while (!FUNC3(&s->killed)) {
		FUNC14(TASK_INTERRUPTIBLE);

		// RX
		while ((skb = FUNC16(&sk->sk_receive_queue))) {
			FUNC17(skb);
			FUNC4(s, skb);
		}

		if (sk->sk_state != BT_CONNECTED)
			break;

		// TX
		while ((skb = FUNC16(&sk->sk_write_queue)))
			if (FUNC5(s, skb))
				break;
		FUNC11(dev);

		FUNC13();
	}
	FUNC14(TASK_RUNNING);
	FUNC12(sk->sk_sleep, &wait);

	/* Cleanup session */
	FUNC7(&bnep_session_sem);

	/* Delete network device */
	FUNC18(dev);

	/* Wakeup user-space polling for socket errors */
	s->sock->sk->sk_err = EUNATCH;

	FUNC20(s->sock->sk->sk_sleep);

	/* Release the socket */
	FUNC8(s->sock->file);

	FUNC1(s);

	FUNC19(&bnep_session_sem);
	FUNC9(dev);
	return 0;
}