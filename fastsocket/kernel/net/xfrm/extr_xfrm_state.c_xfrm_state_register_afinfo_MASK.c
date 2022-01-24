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
struct xfrm_state_afinfo {size_t family; } ;

/* Variables and functions */
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 int ENOBUFS ; 
 size_t NPROTO ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct xfrm_state_afinfo** xfrm_state_afinfo ; 
 int /*<<< orphan*/  xfrm_state_afinfo_lock ; 

int FUNC3(struct xfrm_state_afinfo *afinfo)
{
	int err = 0;
	if (FUNC0(afinfo == NULL))
		return -EINVAL;
	if (FUNC0(afinfo->family >= NPROTO))
		return -EAFNOSUPPORT;
	FUNC1(&xfrm_state_afinfo_lock);
	if (FUNC0(xfrm_state_afinfo[afinfo->family] != NULL))
		err = -ENOBUFS;
	else
		xfrm_state_afinfo[afinfo->family] = afinfo;
	FUNC2(&xfrm_state_afinfo_lock);
	return err;
}