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
struct sockaddr_x25 {scalar_t__ sx25_family; int /*<<< orphan*/  sx25_addr; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  source_addr; } ;

/* Variables and functions */
 scalar_t__ AF_X25 ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,char*) ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 TYPE_1__* FUNC4 (struct sock*) ; 

__attribute__((used)) static int FUNC5(struct socket *sock, struct sockaddr *uaddr, int addr_len)
{
	struct sock *sk = sock->sk;
	struct sockaddr_x25 *addr = (struct sockaddr_x25 *)uaddr;

	if (!FUNC1(sk, SOCK_ZAPPED) ||
	    addr_len != sizeof(struct sockaddr_x25) ||
	    addr->sx25_family != AF_X25)
		return -EINVAL;

	FUNC4(sk)->source_addr = addr->sx25_addr;
	FUNC3(sk);
	FUNC2(sk, SOCK_ZAPPED);
	FUNC0(sk, "x25_bind: socket is bound\n");

	return 0;
}