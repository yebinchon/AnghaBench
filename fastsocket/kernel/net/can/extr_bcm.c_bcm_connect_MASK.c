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
struct sockaddr_can {scalar_t__ can_ifindex; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct net_device {scalar_t__ type; scalar_t__ ifindex; } ;
struct bcm_sock {int bound; int /*<<< orphan*/  procname; int /*<<< orphan*/  bcm_proc_read; scalar_t__ ifindex; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_CAN ; 
 int EISCONN ; 
 int ENODEV ; 
 int /*<<< orphan*/  bcm_proc_fops ; 
 struct bcm_sock* FUNC0 (struct sock*) ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ *,struct sock*) ; 
 scalar_t__ proc_dir ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct socket *sock, struct sockaddr *uaddr, int len,
		       int flags)
{
	struct sockaddr_can *addr = (struct sockaddr_can *)uaddr;
	struct sock *sk = sock->sk;
	struct bcm_sock *bo = FUNC0(sk);

	if (bo->bound)
		return -EISCONN;

	/* bind a device to this socket */
	if (addr->can_ifindex) {
		struct net_device *dev;

		dev = FUNC1(&init_net, addr->can_ifindex);
		if (!dev)
			return -ENODEV;

		if (dev->type != ARPHRD_CAN) {
			FUNC2(dev);
			return -ENODEV;
		}

		bo->ifindex = dev->ifindex;
		FUNC2(dev);

	} else {
		/* no interface reference for ifindex = 0 ('any' CAN device) */
		bo->ifindex = 0;
	}

	bo->bound = 1;

	if (proc_dir) {
		/* unique socket address as filename */
		FUNC5(bo->procname, "%lu", FUNC4(sk));
		bo->bcm_proc_read = FUNC3(bo->procname, 0644,
						     proc_dir,
						     &bcm_proc_fops, sk);
	}

	return 0;
}