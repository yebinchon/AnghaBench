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
struct ip6_sf_list {struct ip6_sf_list* sf_next; int /*<<< orphan*/  mca_lock; struct ip6_sf_list* mca_tomb; struct ip6_sf_list* next; int /*<<< orphan*/  idev; } ;
struct inet6_dev {int /*<<< orphan*/  lock; struct ip6_sf_list* mc_list; int /*<<< orphan*/  mc_lock; struct ip6_sf_list* mc_tomb; } ;
struct ifmcaddr6 {struct ifmcaddr6* sf_next; int /*<<< orphan*/  mca_lock; struct ifmcaddr6* mca_tomb; struct ifmcaddr6* next; int /*<<< orphan*/  idev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ip6_sf_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip6_sf_list*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct inet6_dev *idev)
{
	struct ifmcaddr6 *pmc, *nextpmc;

	FUNC7(&idev->mc_lock);
	pmc = idev->mc_tomb;
	idev->mc_tomb = NULL;
	FUNC8(&idev->mc_lock);

	for (; pmc; pmc = nextpmc) {
		nextpmc = pmc->next;
		FUNC1(pmc);
		FUNC0(pmc->idev);
		FUNC2(pmc);
	}

	/* clear dead sources, too */
	FUNC3(&idev->lock);
	for (pmc=idev->mc_list; pmc; pmc=pmc->next) {
		struct ip6_sf_list *psf, *psf_next;

		FUNC5(&pmc->mca_lock);
		psf = pmc->mca_tomb;
		pmc->mca_tomb = NULL;
		FUNC6(&pmc->mca_lock);
		for (; psf; psf=psf_next) {
			psf_next = psf->sf_next;
			FUNC2(psf);
		}
	}
	FUNC4(&idev->lock);
}