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
struct TYPE_2__ {scalar_t__ s_net; int /*<<< orphan*/  s_node; } ;
struct sockaddr_at {scalar_t__ sat_family; scalar_t__ sat_port; TYPE_1__ sat_addr; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct atalk_sock {scalar_t__ src_net; scalar_t__ src_port; int /*<<< orphan*/  src_node; } ;
struct atalk_addr {scalar_t__ s_net; int /*<<< orphan*/  s_node; } ;

/* Variables and functions */
 scalar_t__ AF_APPLETALK ; 
 int /*<<< orphan*/  ATADDR_ANYNET ; 
 scalar_t__ ATADDR_ANYPORT ; 
 int EADDRINUSE ; 
 int EADDRNOTAVAIL ; 
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 struct atalk_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sock*,struct sockaddr_at*) ; 
 struct atalk_addr* FUNC3 () ; 
 int FUNC4 (struct sock*,struct sockaddr_at*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct socket *sock, struct sockaddr *uaddr, int addr_len)
{
	struct sockaddr_at *addr = (struct sockaddr_at *)uaddr;
	struct sock *sk = sock->sk;
	struct atalk_sock *at = FUNC0(sk);

	if (!FUNC6(sk, SOCK_ZAPPED) ||
	    addr_len != sizeof(struct sockaddr_at))
		return -EINVAL;

	if (addr->sat_family != AF_APPLETALK)
		return -EAFNOSUPPORT;

	if (addr->sat_addr.s_net == FUNC5(ATADDR_ANYNET)) {
		struct atalk_addr *ap = FUNC3();

		if (!ap)
			return -EADDRNOTAVAIL;

		at->src_net  = addr->sat_addr.s_net = ap->s_net;
		at->src_node = addr->sat_addr.s_node= ap->s_node;
	} else {
		if (!FUNC1(addr->sat_addr.s_net,
					  addr->sat_addr.s_node))
			return -EADDRNOTAVAIL;

		at->src_net  = addr->sat_addr.s_net;
		at->src_node = addr->sat_addr.s_node;
	}

	if (addr->sat_port == ATADDR_ANYPORT) {
		int n = FUNC4(sk, addr);

		if (n < 0)
			return n;
	} else {
		at->src_port = addr->sat_port;

		if (FUNC2(sk, addr))
			return -EADDRINUSE;
	}

	FUNC7(sk, SOCK_ZAPPED);
	return 0;
}