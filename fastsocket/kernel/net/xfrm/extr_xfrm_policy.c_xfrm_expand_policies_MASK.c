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
typedef  int /*<<< orphan*/  u16 ;
struct xfrm_policy {int xfrm_nr; scalar_t__ action; scalar_t__ type; } ;
struct flowi {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct xfrm_policy*) ; 
 int FUNC1 (struct xfrm_policy*) ; 
 scalar_t__ XFRM_POLICY_ALLOW ; 
 int /*<<< orphan*/  XFRM_POLICY_OUT ; 
 scalar_t__ XFRM_POLICY_TYPE_MAIN ; 
 struct xfrm_policy* FUNC2 (int /*<<< orphan*/ ,scalar_t__,struct flowi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xfrm_policy**,int) ; 
 int /*<<< orphan*/  FUNC4 (struct xfrm_policy*) ; 

__attribute__((used)) static int FUNC5(struct flowi *fl, u16 family,
				struct xfrm_policy **pols,
				int *num_pols, int *num_xfrms)
{
	int i;

	if (*num_pols == 0 || !pols[0]) {
		*num_pols = 0;
		*num_xfrms = 0;
		return 0;
	}
	if (FUNC0(pols[0]))
		return FUNC1(pols[0]);

	*num_xfrms = pols[0]->xfrm_nr;

#ifdef CONFIG_XFRM_SUB_POLICY
	if (pols[0] && pols[0]->action == XFRM_POLICY_ALLOW &&
	    pols[0]->type != XFRM_POLICY_TYPE_MAIN) {
		pols[1] = xfrm_policy_lookup_bytype(xp_net(pols[0]),
						    XFRM_POLICY_TYPE_MAIN,
						    fl, family,
						    XFRM_POLICY_OUT);
		if (pols[1]) {
			if (IS_ERR(pols[1])) {
				xfrm_pols_put(pols, *num_pols);
				return PTR_ERR(pols[1]);
			}
			(*num_pols) ++;
			(*num_xfrms) += pols[1]->xfrm_nr;
		}
	}
#endif
	for (i = 0; i < *num_pols; i++) {
		if (pols[i]->action != XFRM_POLICY_ALLOW) {
			*num_xfrms = -1;
			break;
		}
	}

	return 0;

}