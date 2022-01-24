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
struct sk_buff {int dummy; } ;
struct inet6_dev {int /*<<< orphan*/  lock; struct ifmcaddr6* mc_list; } ;
struct ifmcaddr6 {int mca_flags; int /*<<< orphan*/  mca_lock; scalar_t__* mca_sfcount; struct ifmcaddr6* next; } ;

/* Variables and functions */
 int MAF_NOREPORT ; 
 size_t MCAST_EXCLUDE ; 
 int MLD2_MODE_IS_EXCLUDE ; 
 int MLD2_MODE_IS_INCLUDE ; 
 struct sk_buff* FUNC0 (struct sk_buff*,struct ifmcaddr6*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct inet6_dev *idev, struct ifmcaddr6 *pmc)
{
	struct sk_buff *skb = NULL;
	int type;

	if (!pmc) {
		FUNC2(&idev->lock);
		for (pmc=idev->mc_list; pmc; pmc=pmc->next) {
			if (pmc->mca_flags & MAF_NOREPORT)
				continue;
			FUNC4(&pmc->mca_lock);
			if (pmc->mca_sfcount[MCAST_EXCLUDE])
				type = MLD2_MODE_IS_EXCLUDE;
			else
				type = MLD2_MODE_IS_INCLUDE;
			skb = FUNC0(skb, pmc, type, 0, 0);
			FUNC5(&pmc->mca_lock);
		}
		FUNC3(&idev->lock);
	} else {
		FUNC4(&pmc->mca_lock);
		if (pmc->mca_sfcount[MCAST_EXCLUDE])
			type = MLD2_MODE_IS_EXCLUDE;
		else
			type = MLD2_MODE_IS_INCLUDE;
		skb = FUNC0(skb, pmc, type, 0, 0);
		FUNC5(&pmc->mca_lock);
	}
	if (skb)
		FUNC1(skb);
}