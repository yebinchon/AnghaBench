#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sock {TYPE_5__* sk_prot; } ;
struct TYPE_6__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_7__ {TYPE_1__ sin_addr; } ;
struct TYPE_8__ {TYPE_2__ v4; } ;
struct TYPE_9__ {TYPE_3__ primary_addr; } ;
struct sctp_association {TYPE_4__ peer; } ;
struct inet_sock {int /*<<< orphan*/  daddr; } ;
struct TYPE_10__ {scalar_t__ (* init ) (struct sock*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 struct inet_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,struct sock*,struct sctp_association*) ; 
 struct sock* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sock*) ; 

__attribute__((used)) static struct sock *FUNC9(struct sock *sk,
					     struct sctp_association *asoc)
{
	struct sock *newsk = FUNC2(FUNC6(sk), PF_INET, GFP_KERNEL,
			sk->sk_prot);
	struct inet_sock *newinet;

	if (!newsk)
		goto out;

	FUNC5(NULL, newsk);

	FUNC1(newsk, sk, asoc);
	FUNC7(newsk, SOCK_ZAPPED);

	newinet = FUNC0(newsk);

	newinet->daddr = asoc->peer.primary_addr.v4.sin_addr.s_addr;

	FUNC4(newsk);

	if (newsk->sk_prot->init(newsk)) {
		FUNC3(newsk);
		newsk = NULL;
	}

out:
	return newsk;
}