#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct socket {struct sock* sk; } ;
struct sockaddr_llc {int /*<<< orphan*/  sllc_arphrd; } ;
struct sock {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * mac; int /*<<< orphan*/  lsap; } ;
struct llc_sock {int /*<<< orphan*/  addr; TYPE_2__* dev; TYPE_1__ laddr; } ;
struct llc_sap {int dummy; } ;
struct TYPE_4__ {struct sockaddr_llc* dev_addr; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int EUSERS ; 
 int IFHWADDRLEN ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC1 (struct llc_sap*,struct sock*) ; 
 struct llc_sap* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct llc_sock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sockaddr_llc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct socket *sock, struct sockaddr_llc *addr)
{
	struct sock *sk = sock->sk;
	struct llc_sock *llc = FUNC3(sk);
	struct llc_sap *sap;
	int rc = -EINVAL;

	if (!FUNC6(sk, SOCK_ZAPPED))
		goto out;
	rc = -ENODEV;
	llc->dev = FUNC0(&init_net, addr->sllc_arphrd);
	if (!llc->dev)
		goto out;
	rc = -EUSERS;
	llc->laddr.lsap = FUNC4();
	if (!llc->laddr.lsap)
		goto out;
	rc = -EBUSY; /* some other network layer is using the sap */
	sap = FUNC2(llc->laddr.lsap, NULL);
	if (!sap)
		goto out;
	FUNC5(llc->laddr.mac, llc->dev->dev_addr, IFHWADDRLEN);
	FUNC5(&llc->addr, addr, sizeof(llc->addr));
	/* assign new connection to its SAP */
	FUNC1(sap, sk);
	FUNC7(sk, SOCK_ZAPPED);
	rc = 0;
out:
	return rc;
}