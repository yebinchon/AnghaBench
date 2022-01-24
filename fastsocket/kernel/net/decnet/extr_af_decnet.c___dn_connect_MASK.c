#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct socket {scalar_t__ state; } ;
struct sockaddr_dn {scalar_t__ sdn_family; int sdn_flags; } ;
struct sock {TYPE_2__* sk_dst_cache; int /*<<< orphan*/  sk_route_caps; int /*<<< orphan*/  sk_bound_dev_if; struct socket* sk_socket; } ;
struct flowi {int /*<<< orphan*/  proto; void* fld_src; void* fld_dst; int /*<<< orphan*/  oif; } ;
struct dn_scp {scalar_t__ state; int /*<<< orphan*/  segsize_loc; int /*<<< orphan*/  addr; int /*<<< orphan*/  peer; } ;
typedef  int /*<<< orphan*/  fl ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  features; } ;

/* Variables and functions */
 scalar_t__ AF_DECnet ; 
 int /*<<< orphan*/  DNPROTO_NSP ; 
 scalar_t__ DN_CC ; 
 scalar_t__ DN_CI ; 
 scalar_t__ DN_O ; 
 scalar_t__ DN_RUN ; 
 struct dn_scp* FUNC0 (struct sock*) ; 
 int ECONNREFUSED ; 
 int EHOSTUNREACH ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 int EISCONN ; 
 int /*<<< orphan*/  NSP_CI ; 
 int /*<<< orphan*/  RTAX_ADVMSS ; 
 int SDF_WILD ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 scalar_t__ SS_CONNECTED ; 
 scalar_t__ SS_CONNECTING ; 
 scalar_t__ SS_UNCONNECTED ; 
 int FUNC1 (struct socket*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__**,struct flowi*,struct sock*,int) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct flowi*,struct dn_scp*) ; 
 int FUNC6 (struct sock*,long*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct sockaddr_dn*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct flowi*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct sock *sk, struct sockaddr_dn *addr, int addrlen, long *timeo, int flags)
{
	struct socket *sock = sk->sk_socket;
	struct dn_scp *scp = FUNC0(sk);
	int err = -EISCONN;
	struct flowi fl;

	if (sock->state == SS_CONNECTED)
		goto out;

	if (sock->state == SS_CONNECTING) {
		err = 0;
		if (scp->state == DN_RUN) {
			sock->state = SS_CONNECTED;
			goto out;
		}
		err = -ECONNREFUSED;
		if (scp->state != DN_CI && scp->state != DN_CC) {
			sock->state = SS_UNCONNECTED;
			goto out;
		}
		return FUNC6(sk, timeo);
	}

	err = -EINVAL;
	if (scp->state != DN_O)
		goto out;

	if (addr == NULL || addrlen != sizeof(struct sockaddr_dn))
		goto out;
	if (addr->sdn_family != AF_DECnet)
		goto out;
	if (addr->sdn_flags & SDF_WILD)
		goto out;

	if (FUNC10(sk, SOCK_ZAPPED)) {
		err = FUNC1(sk->sk_socket);
		if (err)
			goto out;
	}

	FUNC8(&scp->peer, addr, sizeof(struct sockaddr_dn));

	err = -EHOSTUNREACH;
	FUNC9(&fl, 0, sizeof(fl));
	fl.oif = sk->sk_bound_dev_if;
	fl.fld_dst = FUNC4(&scp->peer);
	fl.fld_src = FUNC4(&scp->addr);
	FUNC5(&fl, scp);
	fl.proto = DNPROTO_NSP;
	if (FUNC3(&sk->sk_dst_cache, &fl, sk, flags) < 0)
		goto out;
	sk->sk_route_caps = sk->sk_dst_cache->dev->features;
	sock->state = SS_CONNECTING;
	scp->state = DN_CI;
	scp->segsize_loc = FUNC7(sk->sk_dst_cache, RTAX_ADVMSS);

	FUNC2(sk, NSP_CI);
	err = -EINPROGRESS;
	if (*timeo) {
		err = FUNC6(sk, timeo);
	}
out:
	return err;
}