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
struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; int sk_max_ack_backlog; } ;
struct TYPE_2__ {int /*<<< orphan*/  dest_addr; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ TCP_LISTEN ; 
 int /*<<< orphan*/  X25_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct sock*) ; 

__attribute__((used)) static int FUNC2(struct socket *sock, int backlog)
{
	struct sock *sk = sock->sk;
	int rc = -EOPNOTSUPP;

	if (sk->sk_state != TCP_LISTEN) {
		FUNC0(&FUNC1(sk)->dest_addr, 0, X25_ADDR_LEN);
		sk->sk_max_ack_backlog = backlog;
		sk->sk_state           = TCP_LISTEN;
		rc = 0;
	}

	return rc;
}