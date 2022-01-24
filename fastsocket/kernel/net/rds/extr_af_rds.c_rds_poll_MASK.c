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
struct sock {int /*<<< orphan*/ * sk_sleep; } ;
struct rds_sock {scalar_t__ rs_snd_bytes; scalar_t__ rs_seen_congestion; int /*<<< orphan*/  rs_recv_lock; int /*<<< orphan*/  rs_notify_queue; int /*<<< orphan*/  rs_recv_queue; int /*<<< orphan*/  rs_lock; scalar_t__ rs_cong_notify; int /*<<< orphan*/  rs_cong_track; int /*<<< orphan*/  rs_cong_monitor; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;

/* Variables and functions */
 unsigned int POLLIN ; 
 unsigned int POLLOUT ; 
 unsigned int POLLRDNORM ; 
 unsigned int POLLWRBAND ; 
 unsigned int POLLWRNORM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rds_poll_waitq ; 
 scalar_t__ FUNC3 (struct rds_sock*) ; 
 struct rds_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC9(struct file *file, struct socket *sock,
			     poll_table *wait)
{
	struct sock *sk = sock->sk;
	struct rds_sock *rs = FUNC4(sk);
	unsigned int mask = 0;
	unsigned long flags;

	FUNC1(file, sk->sk_sleep, wait);

	if (rs->rs_seen_congestion)
		FUNC1(file, &rds_poll_waitq, wait);

	FUNC5(&rs->rs_recv_lock, flags);
	if (!rs->rs_cong_monitor) {
		/* When a congestion map was updated, we signal POLLIN for
		 * "historical" reasons. Applications can also poll for
		 * WRBAND instead. */
		if (FUNC2(&rs->rs_cong_track))
			mask |= (POLLIN | POLLRDNORM | POLLWRBAND);
	} else {
		FUNC7(&rs->rs_lock);
		if (rs->rs_cong_notify)
			mask |= (POLLIN | POLLRDNORM);
		FUNC8(&rs->rs_lock);
	}
	if (!FUNC0(&rs->rs_recv_queue)
	 || !FUNC0(&rs->rs_notify_queue))
		mask |= (POLLIN | POLLRDNORM);
	if (rs->rs_snd_bytes < FUNC3(rs))
		mask |= (POLLOUT | POLLWRNORM);
	FUNC6(&rs->rs_recv_lock, flags);

	/* clear state any time we wake a seen-congested socket */
	if (mask)
		rs->rs_seen_congestion = 0;

	return mask;
}