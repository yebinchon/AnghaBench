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
struct sockaddr_ec {TYPE_1__ addr; int /*<<< orphan*/  port; int /*<<< orphan*/  sec_family; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct econet_sock {int /*<<< orphan*/  net; int /*<<< orphan*/  station; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_ECONET ; 
 int EOPNOTSUPP ; 
 struct econet_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  econet_mutex ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_ec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct socket *sock, struct sockaddr *uaddr,
			  int *uaddr_len, int peer)
{
	struct sock *sk;
	struct econet_sock *eo;
	struct sockaddr_ec *sec = (struct sockaddr_ec *)uaddr;

	if (peer)
		return -EOPNOTSUPP;

	FUNC1(sec, 0, sizeof(*sec));
	FUNC2(&econet_mutex);

	sk = sock->sk;
	eo = FUNC0(sk);

	sec->sec_family	  = AF_ECONET;
	sec->port	  = eo->port;
	sec->addr.station = eo->station;
	sec->addr.net	  = eo->net;

	FUNC3(&econet_mutex);

	*uaddr_len = sizeof(*sec);
	return 0;
}