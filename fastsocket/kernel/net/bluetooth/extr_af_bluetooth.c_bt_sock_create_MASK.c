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
struct socket {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int (* create ) (struct net*,struct socket*,int,int) ;int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int BT_MAX_PROTO ; 
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 int EPROTONOSUPPORT ; 
 TYPE_1__** bt_proto ; 
 int /*<<< orphan*/  bt_proto_lock ; 
 int /*<<< orphan*/  FUNC0 (struct socket*,int) ; 
 struct net init_net ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int FUNC5 (struct net*,struct socket*,int,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct net *net, struct socket *sock, int proto,
			  int kern)
{
	int err;

	if (net != &init_net)
		return -EAFNOSUPPORT;

	if (proto < 0 || proto >= BT_MAX_PROTO)
		return -EINVAL;

	if (!bt_proto[proto])
		FUNC4("bt-proto-%d", proto);

	err = -EPROTONOSUPPORT;

	FUNC2(&bt_proto_lock);

	if (bt_proto[proto] && FUNC6(bt_proto[proto]->owner)) {
		err = bt_proto[proto]->create(net, sock, proto, kern);
		FUNC0(sock, proto);
		FUNC1(bt_proto[proto]->owner);
	}

	FUNC3(&bt_proto_lock);

	return err;
}