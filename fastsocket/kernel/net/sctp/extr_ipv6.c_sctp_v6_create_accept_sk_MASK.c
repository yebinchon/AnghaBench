#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sock {TYPE_2__* sk_prot; } ;
struct TYPE_5__ {int /*<<< orphan*/  primary_addr; } ;
struct sctp_association {TYPE_1__ peer; } ;
struct sctp6_sock {int /*<<< orphan*/  inet6; } ;
struct ipv6_pinfo {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/ * pinet6; } ;
struct TYPE_7__ {int /*<<< orphan*/  v4mapped; } ;
struct TYPE_6__ {scalar_t__ (* init ) (struct sock*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PF_INET6 ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 struct ipv6_pinfo* FUNC0 (struct sock*) ; 
 TYPE_4__* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipv6_pinfo*,struct ipv6_pinfo*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct sock*,struct sctp_association*) ; 
 TYPE_3__* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sock*) ; 
 struct sock* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct sock*) ; 

__attribute__((used)) static struct sock *FUNC13(struct sock *sk,
					     struct sctp_association *asoc)
{
	struct sock *newsk;
	struct ipv6_pinfo *newnp, *np = FUNC0(sk);
	struct sctp6_sock *newsctp6sk;

	newsk = FUNC6(FUNC10(sk), PF_INET6, GFP_KERNEL, sk->sk_prot);
	if (!newsk)
		goto out;

	FUNC9(NULL, newsk);

	FUNC3(newsk, sk, asoc);
	FUNC11(sk, SOCK_ZAPPED);

	newsctp6sk = (struct sctp6_sock *)newsk;
	FUNC1(newsk)->pinet6 = &newsctp6sk->inet6;

	FUNC4(newsk)->v4mapped = FUNC4(sk)->v4mapped;

	newnp = FUNC0(newsk);

	FUNC2(newnp, np, sizeof(struct ipv6_pinfo));

	/* Initialize sk's sport, dport, rcv_saddr and daddr for getsockname()
	 * and getpeername().
	 */
	FUNC5(&asoc->peer.primary_addr, newsk);

	FUNC8(newsk);

	if (newsk->sk_prot->init(newsk)) {
		FUNC7(newsk);
		newsk = NULL;
	}

out:
	return newsk;
}