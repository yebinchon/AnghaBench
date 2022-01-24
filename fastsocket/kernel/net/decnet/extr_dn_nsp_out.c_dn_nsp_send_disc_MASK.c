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
struct sock {int /*<<< orphan*/  sk_dst_cache; } ;
struct TYPE_2__ {int /*<<< orphan*/  opt_data; int /*<<< orphan*/  opt_status; int /*<<< orphan*/  opt_optl; } ;
struct dn_scp {int /*<<< orphan*/  addrloc; int /*<<< orphan*/  addrrem; TYPE_1__ discdata_out; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 struct dn_scp* FUNC0 (struct sock*) ; 
 unsigned char NSP_DISCINIT ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,unsigned char,unsigned short,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct sock *sk, unsigned char msgflg,
			unsigned short reason, gfp_t gfp)
{
	struct dn_scp *scp = FUNC0(sk);
	int ddl = 0;

	if (msgflg == NSP_DISCINIT)
		ddl = FUNC2(scp->discdata_out.opt_optl);

	if (reason == 0)
		reason = FUNC2(scp->discdata_out.opt_status);

	FUNC1(sk, msgflg, reason, gfp, sk->sk_dst_cache, ddl,
		scp->discdata_out.opt_data, scp->addrrem, scp->addrloc);
}