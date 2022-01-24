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
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  sk_sleep; int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int EINVAL ; 
 struct sk_buff* FUNC1 (int) ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 scalar_t__ TCP_LISTEN ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 long FUNC6 (long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (long) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static struct sk_buff *FUNC10(struct sock *sk, long *timeo)
{
	FUNC0(wait);
	struct sk_buff *skb = NULL;
	int err = 0;

	FUNC4(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);
	for(;;) {
		FUNC5(sk);
		skb = FUNC8(&sk->sk_receive_queue);
		if (skb == NULL) {
			*timeo = FUNC6(*timeo);
			skb = FUNC8(&sk->sk_receive_queue);
		}
		FUNC3(sk);
		if (skb != NULL)
			break;
		err = -EINVAL;
		if (sk->sk_state != TCP_LISTEN)
			break;
		err = FUNC9(*timeo);
		if (FUNC7(current))
			break;
		err = -EAGAIN;
		if (!*timeo)
			break;
		FUNC4(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);
	}
	FUNC2(sk->sk_sleep, &wait);

	return skb == NULL ? FUNC1(err) : skb;
}