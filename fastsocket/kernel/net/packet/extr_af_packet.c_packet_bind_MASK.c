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
struct sockaddr_ll {scalar_t__ sll_family; scalar_t__ sll_protocol; scalar_t__ sll_ifindex; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  num; } ;

/* Variables and functions */
 scalar_t__ AF_PACKET ; 
 int EINVAL ; 
 int ENODEV ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (struct sock*,struct net_device*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 

__attribute__((used)) static int FUNC5(struct socket *sock, struct sockaddr *uaddr, int addr_len)
{
	struct sockaddr_ll *sll = (struct sockaddr_ll *)uaddr;
	struct sock *sk = sock->sk;
	struct net_device *dev = NULL;
	int err;


	/*
	 *	Check legality
	 */

	if (addr_len < sizeof(struct sockaddr_ll))
		return -EINVAL;
	if (sll->sll_family != AF_PACKET)
		return -EINVAL;

	if (sll->sll_ifindex) {
		err = -ENODEV;
		dev = FUNC0(FUNC4(sk), sll->sll_ifindex);
		if (dev == NULL)
			goto out;
	}
	err = FUNC2(sk, dev, sll->sll_protocol ? : FUNC3(sk)->num);
	if (dev)
		FUNC1(dev);

out:
	return err;
}