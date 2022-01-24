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
struct TYPE_4__ {TYPE_1__* policy_bydst; } ;
struct net {TYPE_2__ xfrm; } ;
struct hlist_head {int dummy; } ;
struct TYPE_3__ {unsigned int hmask; struct hlist_head* table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hlist_head*,struct hlist_head*,unsigned int) ; 
 struct hlist_head* FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct hlist_head*,unsigned int) ; 
 unsigned int FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  xfrm_policy_lock ; 

__attribute__((used)) static void FUNC6(struct net *net, int dir)
{
	unsigned int hmask = net->xfrm.policy_bydst[dir].hmask;
	unsigned int nhashmask = FUNC5(hmask);
	unsigned int nsize = (nhashmask + 1) * sizeof(struct hlist_head);
	struct hlist_head *odst = net->xfrm.policy_bydst[dir].table;
	struct hlist_head *ndst = FUNC3(nsize);
	int i;

	if (!ndst)
		return;

	FUNC0(&xfrm_policy_lock);

	for (i = hmask; i >= 0; i--)
		FUNC2(odst + i, ndst, nhashmask);

	net->xfrm.policy_bydst[dir].table = ndst;
	net->xfrm.policy_bydst[dir].hmask = nhashmask;

	FUNC1(&xfrm_policy_lock);

	FUNC4(odst, (hmask + 1) * sizeof(struct hlist_head));
}