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
struct sock {scalar_t__ sk_bound_dev_if; } ;
struct net_device {scalar_t__ ifindex; } ;
struct inet_sock {scalar_t__ mc_index; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct inet_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

__attribute__((used)) static int FUNC4(struct sock *sk, char *ifname)
{
	struct net_device *dev;
	struct inet_sock *inet = FUNC1(sk);

	if ((dev = FUNC0(&init_net, ifname)) == NULL)
		return -ENODEV;

	if (sk->sk_bound_dev_if && dev->ifindex != sk->sk_bound_dev_if)
		return -EINVAL;

	FUNC2(sk);
	inet->mc_index = dev->ifindex;
	/*  inet->mc_addr  = 0; */
	FUNC3(sk);

	return 0;
}