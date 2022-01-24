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
struct sock {int sk_shutdown; } ;
struct file {int f_flags; } ;
typedef  int /*<<< orphan*/  poll_table ;

/* Variables and functions */
 int O_NONBLOCK ; 
 unsigned int POLLIN ; 
 unsigned int POLLRDNORM ; 
 int RCV_SHUTDOWN ; 
 unsigned int FUNC0 (struct file*,struct socket*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 

unsigned int FUNC3(struct file *file, struct socket *sock, poll_table *wait)
{
	unsigned int mask = FUNC0(file, sock, wait);
	struct sock *sk = sock->sk;

	FUNC2(sk);

	/* Check for false positives due to checksum errors */
	if ((mask & POLLRDNORM) && !(file->f_flags & O_NONBLOCK) &&
	    !(sk->sk_shutdown & RCV_SHUTDOWN) && !FUNC1(sk))
		mask &= ~(POLLIN | POLLRDNORM);

	return mask;

}