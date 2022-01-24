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
struct sock {int dummy; } ;
struct raw_sock {int count; scalar_t__ bound; scalar_t__ ifindex; int /*<<< orphan*/  filter; int /*<<< orphan*/  notifier; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct net_device* FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,struct sock*) ; 
 struct raw_sock* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct socket *sock)
{
	struct sock *sk = sock->sk;
	struct raw_sock *ro;

	if (!sk)
		return 0;

	ro = FUNC5(sk);

	FUNC9(&ro->notifier);

	FUNC3(sk);

	/* remove current filters & unregister */
	if (ro->bound) {
		if (ro->ifindex) {
			struct net_device *dev;

			dev = FUNC0(&init_net, ro->ifindex);
			if (dev) {
				FUNC4(dev, sk);
				FUNC1(dev);
			}
		} else
			FUNC4(NULL, sk);
	}

	if (ro->count > 1)
		FUNC2(ro->filter);

	ro->ifindex = 0;
	ro->bound   = 0;
	ro->count   = 0;

	FUNC7(sk);
	sock->sk = NULL;

	FUNC6(sk);
	FUNC8(sk);

	return 0;
}