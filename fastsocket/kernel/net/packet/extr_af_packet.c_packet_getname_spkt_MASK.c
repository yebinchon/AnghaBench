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
struct sockaddr {int /*<<< orphan*/  sa_data; int /*<<< orphan*/  sa_family; } ;
struct sock {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_PACKET ; 
 int EOPNOTSUPP ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct socket *sock, struct sockaddr *uaddr,
			       int *uaddr_len, int peer)
{
	struct net_device *dev;
	struct sock *sk	= sock->sk;

	if (peer)
		return -EOPNOTSUPP;

	uaddr->sa_family = AF_PACKET;
	dev = FUNC0(FUNC4(sk), FUNC3(sk)->ifindex);
	if (dev) {
		FUNC5(uaddr->sa_data, dev->name, 14);
		FUNC1(dev);
	} else
		FUNC2(uaddr->sa_data, 0, 14);
	*uaddr_len = sizeof(*uaddr);

	return 0;
}