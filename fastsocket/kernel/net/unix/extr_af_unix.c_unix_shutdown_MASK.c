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
struct socket {struct sock* sk; } ;
struct sock {int sk_shutdown; scalar_t__ sk_type; int /*<<< orphan*/  sk_callback_lock; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  POLL_HUP ; 
 int /*<<< orphan*/  POLL_IN ; 
 int RCV_SHUTDOWN ; 
 int SEND_SHUTDOWN ; 
 int SHUTDOWN_MASK ; 
 scalar_t__ SOCK_SEQPACKET ; 
 scalar_t__ SOCK_STREAM ; 
 int /*<<< orphan*/  SOCK_WAKE_WAITD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 struct sock* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 

__attribute__((used)) static int FUNC10(struct socket *sock, int mode)
{
	struct sock *sk = sock->sk;
	struct sock *other;

	mode = (mode+1)&(RCV_SHUTDOWN|SEND_SHUTDOWN);

	if (mode) {
		FUNC8(sk);
		sk->sk_shutdown |= mode;
		other = FUNC7(sk);
		if (other)
			FUNC3(other);
		FUNC9(sk);
		sk->sk_state_change(sk);

		if (other &&
			(sk->sk_type == SOCK_STREAM || sk->sk_type == SOCK_SEQPACKET)) {

			int peer_mode = 0;

			if (mode&RCV_SHUTDOWN)
				peer_mode |= SEND_SHUTDOWN;
			if (mode&SEND_SHUTDOWN)
				peer_mode |= RCV_SHUTDOWN;
			FUNC8(other);
			other->sk_shutdown |= peer_mode;
			FUNC9(other);
			other->sk_state_change(other);
			FUNC0(&other->sk_callback_lock);
			if (peer_mode == SHUTDOWN_MASK)
				FUNC2(other, SOCK_WAKE_WAITD, POLL_HUP);
			else if (peer_mode & RCV_SHUTDOWN)
				FUNC2(other, SOCK_WAKE_WAITD, POLL_IN);
			FUNC1(&other->sk_callback_lock);
		}
		if (other)
			FUNC4(other);
	}
	return 0;
}