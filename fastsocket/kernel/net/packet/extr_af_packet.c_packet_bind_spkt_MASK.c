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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct sock {int dummy; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_2__ {int /*<<< orphan*/  num; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (struct sock*,struct net_device*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct socket *sock, struct sockaddr *uaddr,
			    int addr_len)
{
	struct sock *sk = sock->sk;
	char name[15];
	struct net_device *dev;
	int err = -ENODEV;

	/*
	 *	Check legality
	 */

	if (addr_len != sizeof(struct sockaddr))
		return -EINVAL;
	FUNC5(name, uaddr->sa_data, sizeof(name));

	dev = FUNC0(FUNC4(sk), name);
	if (dev) {
		err = FUNC2(sk, dev, FUNC3(sk)->num);
		FUNC1(dev);
	}
	return err;
}