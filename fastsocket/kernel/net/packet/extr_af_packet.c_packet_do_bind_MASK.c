#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sock {int /*<<< orphan*/  (* sk_error_report ) (struct sock*) ;int /*<<< orphan*/  sk_err; } ;
struct TYPE_3__ {scalar_t__ type; struct net_device const* dev; } ;
struct packet_sock {int running; int /*<<< orphan*/  bind_lock; TYPE_1__ prot_hook; int /*<<< orphan*/  ifindex; scalar_t__ num; } ;
typedef  struct net_device {int flags; int /*<<< orphan*/  ifindex; } const net_device ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  ENETDOWN ; 
 int IFF_UP ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 struct packet_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 

__attribute__((used)) static int FUNC11(struct sock *sk, struct net_device *dev, __be16 proto)
{
	struct packet_sock *po = FUNC4(sk);
	const struct net_device *dev_curr;
	__be16 proto_curr;
	bool need_rehook;

	FUNC3(sk);
	FUNC8(&po->bind_lock);

	proto_curr = po->prot_hook.type;
	dev_curr = po->prot_hook.dev;

	need_rehook = proto_curr != proto || dev_curr != dev;

	if (need_rehook) {
		if (po->running) {
			FUNC0(sk);
			po->running = 0;
			po->num = 0;
			FUNC9(&po->bind_lock);
			FUNC2(&po->prot_hook);
			FUNC8(&po->bind_lock);
		}

		po->num = proto;
		po->prot_hook.type = proto;
		po->prot_hook.dev = dev;

		po->ifindex = dev ? dev->ifindex : 0;
	}

	if (proto == 0 || !need_rehook)
		goto out_unlock;

	if (!dev || (dev->flags & IFF_UP)) {
		FUNC1(&po->prot_hook);
		FUNC7(sk);
		po->running = 1;
	} else {
		sk->sk_err = ENETDOWN;
		if (!FUNC6(sk, SOCK_DEAD))
			sk->sk_error_report(sk);
	}

out_unlock:
	FUNC9(&po->bind_lock);
	FUNC5(sk);
	return 0;
}