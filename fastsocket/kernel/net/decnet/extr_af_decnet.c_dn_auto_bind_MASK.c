#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;
struct TYPE_5__ {scalar_t__ a_addr; void* a_len; } ;
struct TYPE_6__ {TYPE_2__ sdn_add; void* sdn_objnamel; int /*<<< orphan*/  sdn_objname; scalar_t__ sdn_objnum; scalar_t__ sdn_flags; } ;
struct TYPE_4__ {int acc_accl; int /*<<< orphan*/  acc_acc; } ;
struct dn_scp {TYPE_3__ addr; TYPE_1__ accessdata; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 struct dn_scp* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 void* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct socket *sock)
{
	struct sock *sk = sock->sk;
	struct dn_scp *scp = FUNC0(sk);
	int rv;

	FUNC7(sk, SOCK_ZAPPED);

	scp->addr.sdn_flags  = 0;
	scp->addr.sdn_objnum = 0;

	/*
	 * This stuff is to keep compatibility with Eduardo's
	 * patch. I hope I can dispense with it shortly...
	 */
	if ((scp->accessdata.acc_accl != 0) &&
		(scp->accessdata.acc_accl <= 12)) {

		scp->addr.sdn_objnamel = FUNC1(scp->accessdata.acc_accl);
		FUNC5(scp->addr.sdn_objname, scp->accessdata.acc_acc, FUNC4(scp->addr.sdn_objnamel));

		scp->accessdata.acc_accl = 0;
		FUNC6(scp->accessdata.acc_acc, 0, 40);
	}
	/* End of compatibility stuff */

	scp->addr.sdn_add.a_len = FUNC1(2);
	rv = FUNC2((__le16 *)scp->addr.sdn_add.a_addr);
	if (rv == 0) {
		rv = FUNC3(sk);
		if (rv)
			FUNC8(sk, SOCK_ZAPPED);
	}

	return rv;
}