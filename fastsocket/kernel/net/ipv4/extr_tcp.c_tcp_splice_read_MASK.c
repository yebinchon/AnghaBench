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
struct tcp_splice_state {size_t len; unsigned int flags; struct pipe_inode_info* pipe; } ;
struct socket {TYPE_1__* file; struct sock* sk; } ;
struct sock {int sk_shutdown; scalar_t__ sk_state; scalar_t__ sk_err; } ;
struct pipe_inode_info {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {int f_flags; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOTCONN ; 
 int ESPIPE ; 
 int O_NONBLOCK ; 
 int RCV_SHUTDOWN ; 
 int /*<<< orphan*/  SOCK_DONE ; 
 scalar_t__ TCP_CLOSE ; 
 int FUNC0 (struct sock*,struct tcp_splice_state*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,long*) ; 
 int FUNC5 (struct sock*) ; 
 scalar_t__ FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 
 int FUNC7 (long) ; 
 long FUNC8 (struct sock*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

ssize_t FUNC10(struct socket *sock, loff_t *ppos,
			struct pipe_inode_info *pipe, size_t len,
			unsigned int flags)
{
	struct sock *sk = sock->sk;
	struct tcp_splice_state tss = {
		.pipe = pipe,
		.len = len,
		.flags = flags,
	};
	long timeo;
	ssize_t spliced;
	int ret;

	/*
	 * We can't seek on a socket input
	 */
	if (FUNC9(*ppos))
		return -ESPIPE;

	ret = spliced = 0;

	FUNC1(sk);

	timeo = FUNC8(sk, sock->file->f_flags & O_NONBLOCK);
	while (tss.len) {
		ret = FUNC0(sk, &tss);
		if (ret < 0)
			break;
		else if (!ret) {
			if (spliced)
				break;
			if (FUNC6(sk, SOCK_DONE))
				break;
			if (sk->sk_err) {
				ret = FUNC5(sk);
				break;
			}
			if (sk->sk_shutdown & RCV_SHUTDOWN)
				break;
			if (sk->sk_state == TCP_CLOSE) {
				/*
				 * This occurs when user tries to read
				 * from never connected socket.
				 */
				if (!FUNC6(sk, SOCK_DONE))
					ret = -ENOTCONN;
				break;
			}
			if (!timeo) {
				ret = -EAGAIN;
				break;
			}
			FUNC4(sk, &timeo);
			if (FUNC3(current)) {
				ret = FUNC7(timeo);
				break;
			}
			continue;
		}
		tss.len -= ret;
		spliced += ret;

		if (!timeo)
			break;
		FUNC2(sk);
		FUNC1(sk);

		if (sk->sk_err || sk->sk_state == TCP_CLOSE ||
		    (sk->sk_shutdown & RCV_SHUTDOWN) ||
		    FUNC3(current))
			break;
	}

	FUNC2(sk);

	if (spliced)
		return spliced;

	return ret;
}