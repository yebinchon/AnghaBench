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
struct xfrm_policy_afinfo {int (* get_tos ) (struct flowi*) ;} ;
struct flowi {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct flowi*) ; 
 struct xfrm_policy_afinfo* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct xfrm_policy_afinfo*) ; 

__attribute__((used)) static inline int FUNC3(struct flowi *fl, int family)
{
	struct xfrm_policy_afinfo *afinfo = FUNC1(family);
	int tos;

	if (!afinfo)
		return -EINVAL;

	tos = afinfo->get_tos(fl);

	FUNC2(afinfo);

	return tos;
}