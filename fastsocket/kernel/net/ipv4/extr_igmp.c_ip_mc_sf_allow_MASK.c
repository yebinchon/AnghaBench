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
struct sock {int dummy; } ;
struct ip_sf_socklist {int sl_count; scalar_t__* sl_addr; } ;
struct TYPE_3__ {scalar_t__ s_addr; } ;
struct TYPE_4__ {int imr_ifindex; TYPE_1__ imr_multiaddr; } ;
struct ip_mc_socklist {scalar_t__ sfmode; struct ip_sf_socklist* sflist; TYPE_2__ multi; int /*<<< orphan*/  next; } ;
struct inet_sock {int mc_all; int /*<<< orphan*/  mc_list; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 scalar_t__ MCAST_EXCLUDE ; 
 scalar_t__ MCAST_INCLUDE ; 
 struct inet_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct ip_mc_socklist* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(struct sock *sk, __be32 loc_addr, __be32 rmt_addr, int dif)
{
	struct inet_sock *inet = FUNC0(sk);
	struct ip_mc_socklist *pmc;
	struct ip_sf_socklist *psl;
	int i;
	int ret;

	ret = 1;
	if (!FUNC1(loc_addr))
		goto out;

	FUNC3();
	for (pmc=FUNC2(inet->mc_list); pmc; pmc=FUNC2(pmc->next)) {
		if (pmc->multi.imr_multiaddr.s_addr == loc_addr &&
		    pmc->multi.imr_ifindex == dif)
			break;
	}
	ret = inet->mc_all;
	if (!pmc)
		goto unlock;
	psl = pmc->sflist;
	ret = (pmc->sfmode == MCAST_EXCLUDE);
	if (!psl)
		goto unlock;

	for (i=0; i<psl->sl_count; i++) {
		if (psl->sl_addr[i] == rmt_addr)
			break;
	}
	ret = 0;
	if (pmc->sfmode == MCAST_INCLUDE && i >= psl->sl_count)
		goto unlock;
	if (pmc->sfmode == MCAST_EXCLUDE && i < psl->sl_count)
		goto unlock;
	ret = 1;
unlock:
	FUNC4();
out:
	return ret;
}