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
struct ip6_sf_list {scalar_t__ sf_crcount; struct ip6_sf_list* sf_next; } ;
struct inet6_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/  mc_ifc_count; int /*<<< orphan*/  mc_qrv; struct ifmcaddr6* mc_list; } ;
struct in6_addr {int dummy; } ;
struct ifmcaddr6 {size_t mca_sfmode; scalar_t__* mca_sfcount; int /*<<< orphan*/  mca_lock; struct ip6_sf_list* mca_sources; int /*<<< orphan*/  mca_crcount; int /*<<< orphan*/  mca_addr; struct ifmcaddr6* next; } ;

/* Variables and functions */
 int ENODEV ; 
 int ESRCH ; 
 size_t MCAST_EXCLUDE ; 
 size_t MCAST_INCLUDE ; 
 int FUNC0 (struct ifmcaddr6*,int,struct in6_addr*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ifmcaddr6*,int,struct in6_addr*) ; 
 scalar_t__ FUNC2 (struct in6_addr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ifmcaddr6*) ; 
 scalar_t__ FUNC7 (struct ifmcaddr6*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct inet6_dev *idev, struct in6_addr *pmca,
			  int sfmode, int sfcount, struct in6_addr *psfsrc,
			  int delta)
{
	struct ifmcaddr6 *pmc;
	int	isexclude;
	int	i, err;

	if (!idev)
		return -ENODEV;
	FUNC4(&idev->lock);
	for (pmc=idev->mc_list; pmc; pmc=pmc->next) {
		if (FUNC2(pmca, &pmc->mca_addr))
			break;
	}
	if (!pmc) {
		/* MCA not found?? bug */
		FUNC5(&idev->lock);
		return -ESRCH;
	}
	FUNC8(&pmc->mca_lock);

	FUNC6(pmc);
	isexclude = pmc->mca_sfmode == MCAST_EXCLUDE;
	if (!delta)
		pmc->mca_sfcount[sfmode]++;
	err = 0;
	for (i=0; i<sfcount; i++) {
		err = FUNC0(pmc, sfmode, &psfsrc[i], delta);
		if (err)
			break;
	}
	if (err) {
		int j;

		if (!delta)
			pmc->mca_sfcount[sfmode]--;
		for (j=0; j<i; j++)
			(void) FUNC1(pmc, sfmode, &psfsrc[i]);
	} else if (isexclude != (pmc->mca_sfcount[MCAST_EXCLUDE] != 0)) {
		struct ip6_sf_list *psf;

		/* filter mode change */
		if (pmc->mca_sfcount[MCAST_EXCLUDE])
			pmc->mca_sfmode = MCAST_EXCLUDE;
		else if (pmc->mca_sfcount[MCAST_INCLUDE])
			pmc->mca_sfmode = MCAST_INCLUDE;
		/* else no filters; keep old mode for reports */

		pmc->mca_crcount = idev->mc_qrv;
		idev->mc_ifc_count = pmc->mca_crcount;
		for (psf=pmc->mca_sources; psf; psf = psf->sf_next)
			psf->sf_crcount = 0;
		FUNC3(idev);
	} else if (FUNC7(pmc))
		FUNC3(idev);
	FUNC9(&pmc->mca_lock);
	FUNC5(&idev->lock);
	return err;
}