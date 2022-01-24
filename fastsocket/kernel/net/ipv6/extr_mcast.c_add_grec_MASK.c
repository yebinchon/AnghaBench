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
struct sk_buff {int dummy; } ;
struct net_device {int /*<<< orphan*/  mtu; } ;
struct mld2_report {scalar_t__ mld2r_ngrec; } ;
struct mld2_grec {void* grec_nsrcs; } ;
struct in6_addr {int dummy; } ;
struct ip6_sf_list {scalar_t__ sf_crcount; struct ip6_sf_list* sf_next; struct in6_addr sf_addr; scalar_t__ sf_gsresp; } ;
struct ifmcaddr6 {int mca_flags; scalar_t__ mca_crcount; struct ip6_sf_list* mca_sources; struct ip6_sf_list* mca_tomb; TYPE_1__* idev; } ;
struct TYPE_2__ {struct net_device* dev; } ;

/* Variables and functions */
 int FUNC0 (struct sk_buff*) ; 
 int MAF_GSQUERY ; 
 int MAF_NOREPORT ; 
 int MLD2_ALLOW_NEW_SOURCES ; 
 int MLD2_BLOCK_OLD_SOURCES ; 
 int MLD2_CHANGE_TO_EXCLUDE ; 
 int MLD2_MODE_IS_EXCLUDE ; 
 int MLD2_MODE_IS_INCLUDE ; 
 struct sk_buff* FUNC1 (struct sk_buff*,struct ifmcaddr6*,int,struct mld2_grec**) ; 
 int FUNC2 (struct ifmcaddr6*,int,int,int) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ifmcaddr6*,struct ip6_sf_list*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ip6_sf_list*) ; 
 struct sk_buff* FUNC6 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int) ; 
 scalar_t__ FUNC9 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC10(struct sk_buff *skb, struct ifmcaddr6 *pmc,
	int type, int gdeleted, int sdeleted)
{
	struct net_device *dev = pmc->idev->dev;
	struct mld2_report *pmr;
	struct mld2_grec *pgr = NULL;
	struct ip6_sf_list *psf, *psf_next, *psf_prev, **psf_list;
	int scount, stotal, first, isquery, truncate;

	if (pmc->mca_flags & MAF_NOREPORT)
		return skb;

	isquery = type == MLD2_MODE_IS_INCLUDE ||
		  type == MLD2_MODE_IS_EXCLUDE;
	truncate = type == MLD2_MODE_IS_EXCLUDE ||
		    type == MLD2_CHANGE_TO_EXCLUDE;

	stotal = scount = 0;

	psf_list = sdeleted ? &pmc->mca_tomb : &pmc->mca_sources;

	if (!*psf_list)
		goto empty_source;

	pmr = skb ? (struct mld2_report *)FUNC9(skb) : NULL;

	/* EX and TO_EX get a fresh packet, if needed */
	if (truncate) {
		if (pmr && pmr->mld2r_ngrec &&
		    FUNC0(skb) < FUNC2(pmc, type, gdeleted, sdeleted)) {
			if (skb)
				FUNC7(skb);
			skb = FUNC6(dev, dev->mtu);
		}
	}
	first = 1;
	psf_prev = NULL;
	for (psf=*psf_list; psf; psf=psf_next) {
		struct in6_addr *psrc;

		psf_next = psf->sf_next;

		if (!FUNC4(pmc, psf, type, gdeleted, sdeleted)) {
			psf_prev = psf;
			continue;
		}

		/* clear marks on query responses */
		if (isquery)
			psf->sf_gsresp = 0;

		if (FUNC0(skb) < sizeof(*psrc) +
		    first*sizeof(struct mld2_grec)) {
			if (truncate && !first)
				break;	 /* truncate these */
			if (pgr)
				pgr->grec_nsrcs = FUNC3(scount);
			if (skb)
				FUNC7(skb);
			skb = FUNC6(dev, dev->mtu);
			first = 1;
			scount = 0;
		}
		if (first) {
			skb = FUNC1(skb, pmc, type, &pgr);
			first = 0;
		}
		if (!skb)
			return NULL;
		psrc = (struct in6_addr *)FUNC8(skb, sizeof(*psrc));
		*psrc = psf->sf_addr;
		scount++; stotal++;
		if ((type == MLD2_ALLOW_NEW_SOURCES ||
		     type == MLD2_BLOCK_OLD_SOURCES) && psf->sf_crcount) {
			psf->sf_crcount--;
			if ((sdeleted || gdeleted) && psf->sf_crcount == 0) {
				if (psf_prev)
					psf_prev->sf_next = psf->sf_next;
				else
					*psf_list = psf->sf_next;
				FUNC5(psf);
				continue;
			}
		}
		psf_prev = psf;
	}

empty_source:
	if (!stotal) {
		if (type == MLD2_ALLOW_NEW_SOURCES ||
		    type == MLD2_BLOCK_OLD_SOURCES)
			return skb;
		if (pmc->mca_crcount || isquery) {
			/* make sure we have room for group header */
			if (skb && FUNC0(skb) < sizeof(struct mld2_grec)) {
				FUNC7(skb);
				skb = NULL; /* add_grhead will get a new one */
			}
			skb = FUNC1(skb, pmc, type, &pgr);
		}
	}
	if (pgr)
		pgr->grec_nsrcs = FUNC3(scount);

	if (isquery)
		pmc->mca_flags &= ~MAF_GSQUERY;	/* clear query state */
	return skb;
}