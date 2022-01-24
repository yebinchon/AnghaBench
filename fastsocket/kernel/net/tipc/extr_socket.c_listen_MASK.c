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
struct socket {scalar_t__ state; struct sock* sk; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ SS_LISTENING ; 
 scalar_t__ SS_READY ; 
 scalar_t__ SS_UNCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 

__attribute__((used)) static int FUNC2(struct socket *sock, int len)
{
	struct sock *sk = sock->sk;
	int res;

	FUNC0(sk);

	if (sock->state == SS_READY)
		res = -EOPNOTSUPP;
	else if (sock->state != SS_UNCONNECTED)
		res = -EINVAL;
	else {
		sock->state = SS_LISTENING;
		res = 0;
	}

	FUNC1(sk);
	return res;
}