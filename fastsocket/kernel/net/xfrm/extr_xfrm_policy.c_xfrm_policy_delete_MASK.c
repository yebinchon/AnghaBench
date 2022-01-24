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
struct xfrm_policy {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 struct xfrm_policy* FUNC0 (struct xfrm_policy*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct xfrm_policy*) ; 
 int /*<<< orphan*/  xfrm_policy_lock ; 

int FUNC4(struct xfrm_policy *pol, int dir)
{
	FUNC1(&xfrm_policy_lock);
	pol = FUNC0(pol, dir);
	FUNC2(&xfrm_policy_lock);
	if (pol) {
		FUNC3(pol);
		return 0;
	}
	return -ENOENT;
}