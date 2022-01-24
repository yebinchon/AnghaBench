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
struct ip_sf_list {scalar_t__ sf_crcount; struct ip_sf_list* sf_next; } ;
struct ip_mc_list {scalar_t__ multiaddr; scalar_t__* sfcount; size_t sfmode; int /*<<< orphan*/  lock; int /*<<< orphan*/  interface; struct ip_sf_list* sources; scalar_t__ crcount; struct ip_mc_list* next; } ;
struct in_device {scalar_t__ mr_ifc_count; scalar_t__ mr_qrv; int /*<<< orphan*/  mc_list_lock; struct ip_mc_list* mc_list; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ESRCH ; 
 scalar_t__ IGMP_Unsolicited_Report_Count ; 
 size_t MCAST_EXCLUDE ; 
 size_t MCAST_INCLUDE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ip_mc_list*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ip_mc_list*) ; 
 scalar_t__ FUNC5 (struct ip_mc_list*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct in_device *in_dev, __be32 *pmca, int sfmode,
			 int sfcount, __be32 *psfsrc, int delta)
{
	struct ip_mc_list *pmc;
	int	changerec = 0;
	int	i, err;

	if (!in_dev)
		return -ENODEV;
	FUNC2(&in_dev->mc_list_lock);
	for (pmc=in_dev->mc_list; pmc; pmc=pmc->next) {
		if (*pmca == pmc->multiaddr)
			break;
	}
	if (!pmc) {
		/* MCA not found?? bug */
		FUNC3(&in_dev->mc_list_lock);
		return -ESRCH;
	}
	FUNC6(&pmc->lock);
	FUNC3(&in_dev->mc_list_lock);
#ifdef CONFIG_IP_MULTICAST
	sf_markstate(pmc);
#endif
	if (!delta) {
		err = -EINVAL;
		if (!pmc->sfcount[sfmode])
			goto out_unlock;
		pmc->sfcount[sfmode]--;
	}
	err = 0;
	for (i=0; i<sfcount; i++) {
		int rv = FUNC1(pmc, sfmode, &psfsrc[i]);

		changerec |= rv > 0;
		if (!err && rv < 0)
			err = rv;
	}
	if (pmc->sfmode == MCAST_EXCLUDE &&
	    pmc->sfcount[MCAST_EXCLUDE] == 0 &&
	    pmc->sfcount[MCAST_INCLUDE]) {
#ifdef CONFIG_IP_MULTICAST
		struct ip_sf_list *psf;
#endif

		/* filter mode change */
		pmc->sfmode = MCAST_INCLUDE;
#ifdef CONFIG_IP_MULTICAST
		pmc->crcount = in_dev->mr_qrv ? in_dev->mr_qrv :
			IGMP_Unsolicited_Report_Count;
		in_dev->mr_ifc_count = pmc->crcount;
		for (psf=pmc->sources; psf; psf = psf->sf_next)
			psf->sf_crcount = 0;
		igmp_ifc_event(pmc->interface);
	} else if (sf_setstate(pmc) || changerec) {
		igmp_ifc_event(pmc->interface);
#endif
	}
out_unlock:
	FUNC7(&pmc->lock);
	return err;
}