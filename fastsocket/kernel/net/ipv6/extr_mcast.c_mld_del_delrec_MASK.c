#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ip6_sf_list {int /*<<< orphan*/  idev; struct ip6_sf_list* sf_next; struct ip6_sf_list* mca_tomb; struct ip6_sf_list* next; int /*<<< orphan*/  mca_addr; } ;
struct inet6_dev {int /*<<< orphan*/  mc_lock; struct ip6_sf_list* mc_tomb; } ;
struct in6_addr {int dummy; } ;
struct ifmcaddr6 {int /*<<< orphan*/  idev; struct ifmcaddr6* sf_next; struct ifmcaddr6* mca_tomb; struct ifmcaddr6* next; int /*<<< orphan*/  mca_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip6_sf_list*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct inet6_dev *idev, struct in6_addr *pmca)
{
	struct ifmcaddr6 *pmc, *pmc_prev;
	struct ip6_sf_list *psf, *psf_next;

	FUNC3(&idev->mc_lock);
	pmc_prev = NULL;
	for (pmc=idev->mc_tomb; pmc; pmc=pmc->next) {
		if (FUNC1(&pmc->mca_addr, pmca))
			break;
		pmc_prev = pmc;
	}
	if (pmc) {
		if (pmc_prev)
			pmc_prev->next = pmc->next;
		else
			idev->mc_tomb = pmc->next;
	}
	FUNC4(&idev->mc_lock);
	if (pmc) {
		for (psf=pmc->mca_tomb; psf; psf=psf_next) {
			psf_next = psf->sf_next;
			FUNC2(psf);
		}
		FUNC0(pmc->idev);
		FUNC2(pmc);
	}
}