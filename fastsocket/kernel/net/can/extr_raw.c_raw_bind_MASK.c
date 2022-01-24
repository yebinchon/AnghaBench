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
struct sockaddr_can {int can_ifindex; } ;
struct sockaddr {int dummy; } ;
struct sock {int /*<<< orphan*/  (* sk_error_report ) (struct sock*) ;int /*<<< orphan*/  sk_err; } ;
struct raw_sock {int bound; int ifindex; } ;
struct net_device {scalar_t__ type; int flags; int ifindex; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_CAN ; 
 int EINVAL ; 
 int /*<<< orphan*/  ENETDOWN ; 
 int ENODEV ; 
 int IFF_UP ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,struct sock*) ; 
 int FUNC4 (struct net_device*,struct sock*) ; 
 struct raw_sock* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 

__attribute__((used)) static int FUNC9(struct socket *sock, struct sockaddr *uaddr, int len)
{
	struct sockaddr_can *addr = (struct sockaddr_can *)uaddr;
	struct sock *sk = sock->sk;
	struct raw_sock *ro = FUNC5(sk);
	int ifindex;
	int err = 0;
	int notify_enetdown = 0;

	if (len < sizeof(*addr))
		return -EINVAL;

	FUNC2(sk);

	if (ro->bound && addr->can_ifindex == ro->ifindex)
		goto out;

	if (addr->can_ifindex) {
		struct net_device *dev;

		dev = FUNC0(&init_net, addr->can_ifindex);
		if (!dev) {
			err = -ENODEV;
			goto out;
		}
		if (dev->type != ARPHRD_CAN) {
			FUNC1(dev);
			err = -ENODEV;
			goto out;
		}
		if (!(dev->flags & IFF_UP))
			notify_enetdown = 1;

		ifindex = dev->ifindex;

		/* filters set by default/setsockopt */
		err = FUNC4(dev, sk);
		FUNC1(dev);
	} else {
		ifindex = 0;

		/* filters set by default/setsockopt */
		err = FUNC4(NULL, sk);
	}

	if (!err) {
		if (ro->bound) {
			/* unregister old filters */
			if (ro->ifindex) {
				struct net_device *dev;

				dev = FUNC0(&init_net, ro->ifindex);
				if (dev) {
					FUNC3(dev, sk);
					FUNC1(dev);
				}
			} else
				FUNC3(NULL, sk);
		}
		ro->ifindex = ifindex;
		ro->bound = 1;
	}

 out:
	FUNC6(sk);

	if (notify_enetdown) {
		sk->sk_err = ENETDOWN;
		if (!FUNC7(sk, SOCK_DEAD))
			sk->sk_error_report(sk);
	}

	return err;
}