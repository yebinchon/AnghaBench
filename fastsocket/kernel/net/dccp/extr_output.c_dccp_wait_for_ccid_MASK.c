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
struct sock {int /*<<< orphan*/  sk_sleep; scalar_t__ sk_err; int /*<<< orphan*/  sk_write_pending; } ;
struct sk_buff {int dummy; } ;
struct dccp_sock {int /*<<< orphan*/  dccps_hc_tx_ccid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINTR ; 
 int EPIPE ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 struct dccp_sock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 unsigned long FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC11(struct sock *sk, struct sk_buff *skb, int delay)
{
	struct dccp_sock *dp = FUNC3(sk);
	FUNC0(wait);
	unsigned long jiffdelay;
	int rc;

	do {
		FUNC2("delayed send by %d msec\n", delay);
		jiffdelay = FUNC6(delay);

		FUNC7(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);

		sk->sk_write_pending++;
		FUNC8(sk);
		FUNC9(jiffdelay);
		FUNC5(sk);
		sk->sk_write_pending--;

		if (sk->sk_err)
			goto do_error;
		if (FUNC10(current))
			goto do_interrupted;

		rc = FUNC1(dp->dccps_hc_tx_ccid, sk, skb);
	} while ((delay = rc) > 0);
out:
	FUNC4(sk->sk_sleep, &wait);
	return rc;

do_error:
	rc = -EPIPE;
	goto out;
do_interrupted:
	rc = -EINTR;
	goto out;
}