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
struct TYPE_2__ {int /*<<< orphan*/  net; int /*<<< orphan*/  station; } ;
struct sockaddr_ec {scalar_t__ sec_family; TYPE_1__ addr; int /*<<< orphan*/  port; int /*<<< orphan*/  cb; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct econet_sock {int /*<<< orphan*/  net; int /*<<< orphan*/  station; int /*<<< orphan*/  port; int /*<<< orphan*/  cb; } ;

/* Variables and functions */
 scalar_t__ AF_ECONET ; 
 int EINVAL ; 
 struct econet_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  econet_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct socket *sock, struct sockaddr *uaddr, int addr_len)
{
	struct sockaddr_ec *sec = (struct sockaddr_ec *)uaddr;
	struct sock *sk;
	struct econet_sock *eo;

	/*
	 *	Check legality
	 */

	if (addr_len < sizeof(struct sockaddr_ec) ||
	    sec->sec_family != AF_ECONET)
		return -EINVAL;

	FUNC1(&econet_mutex);

	sk = sock->sk;
	eo = FUNC0(sk);

	eo->cb	    = sec->cb;
	eo->port    = sec->port;
	eo->station = sec->addr.station;
	eo->net	    = sec->addr.net;

	FUNC2(&econet_mutex);

	return 0;
}