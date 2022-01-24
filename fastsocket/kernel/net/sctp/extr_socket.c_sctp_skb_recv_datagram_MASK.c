#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct sock {int sk_shutdown; TYPE_1__ sk_receive_queue; } ;
struct sk_buff {int /*<<< orphan*/  users; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  MAX_SCHEDULE_TIMEOUT ; 
 int MSG_PEEK ; 
 int RCV_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (char*,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct sock*,int*,long*) ; 
 struct sk_buff* FUNC3 (TYPE_1__*) ; 
 struct sk_buff* FUNC4 (TYPE_1__*) ; 
 int FUNC5 (struct sock*) ; 
 long FUNC6 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct sk_buff *FUNC9(struct sock *sk, int flags,
					      int noblock, int *err)
{
	int error;
	struct sk_buff *skb;
	long timeo;

	timeo = FUNC6(sk, noblock);

	FUNC0("Timeout: timeo: %ld, MAX: %ld.\n",
			  timeo, MAX_SCHEDULE_TIMEOUT);

	do {
		/* Again only user level code calls this function,
		 * so nothing interrupt level
		 * will suddenly eat the receive_queue.
		 *
		 *  Look at current nfs client by the way...
		 *  However, this function was corrent in any case. 8)
		 */
		if (flags & MSG_PEEK) {
			FUNC7(&sk->sk_receive_queue.lock);
			skb = FUNC4(&sk->sk_receive_queue);
			if (skb)
				FUNC1(&skb->users);
			FUNC8(&sk->sk_receive_queue.lock);
		} else {
			skb = FUNC3(&sk->sk_receive_queue);
		}

		if (skb)
			return skb;

		/* Caller is allowed not to check sk->sk_err before calling. */
		error = FUNC5(sk);
		if (error)
			goto no_packet;

		if (sk->sk_shutdown & RCV_SHUTDOWN)
			break;

		/* User doesn't want to wait.  */
		error = -EAGAIN;
		if (!timeo)
			goto no_packet;
	} while (FUNC2(sk, err, &timeo) == 0);

	return NULL;

no_packet:
	*err = error;
	return NULL;
}