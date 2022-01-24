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
struct sock {int /*<<< orphan*/  sk_omem_alloc; } ;
struct ip_sf_socklist {int /*<<< orphan*/  rcu; int /*<<< orphan*/  sl_max; int /*<<< orphan*/ * sl_addr; int /*<<< orphan*/  sl_count; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_4__ {TYPE_1__ imr_multiaddr; } ;
struct ip_mc_socklist {struct ip_sf_socklist* sflist; int /*<<< orphan*/  sfmode; TYPE_2__ multi; } ;
struct in_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct in_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ip_sf_socklist_reclaim ; 
 int /*<<< orphan*/  FUNC4 (struct ip_sf_socklist*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct sock *sk, struct ip_mc_socklist *iml,
			   struct in_device *in_dev)
{
	struct ip_sf_socklist *psf = iml->sflist;
	int err;

	if (psf == NULL) {
		/* any-source empty exclude case */
		return FUNC3(in_dev, &iml->multi.imr_multiaddr.s_addr,
			iml->sfmode, 0, NULL, 0);
	}
	err = FUNC3(in_dev, &iml->multi.imr_multiaddr.s_addr,
			iml->sfmode, psf->sl_count, psf->sl_addr, 0);
	FUNC4(iml->sflist, NULL);
	/* decrease mem now to avoid the memleak warning */
	FUNC1(FUNC0(psf->sl_max), &sk->sk_omem_alloc);
	FUNC2(&psf->rcu, ip_sf_socklist_reclaim);
	return err;
}