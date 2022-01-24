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
struct xfrm_state_afinfo {int /*<<< orphan*/  owner; struct xfrm_mode** mode_map; } ;
struct xfrm_mode {size_t encap; struct xfrm_state_afinfo* afinfo; } ;

/* Variables and functions */
 int EAFNOSUPPORT ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOENT ; 
 size_t XFRM_MODE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 struct xfrm_state_afinfo* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct xfrm_state_afinfo*) ; 

int FUNC4(struct xfrm_mode *mode, int family)
{
	struct xfrm_state_afinfo *afinfo;
	struct xfrm_mode **modemap;
	int err;

	if (FUNC1(mode->encap >= XFRM_MODE_MAX))
		return -EINVAL;

	afinfo = FUNC2(family);
	if (FUNC1(afinfo == NULL))
		return -EAFNOSUPPORT;

	err = -EEXIST;
	modemap = afinfo->mode_map;
	if (modemap[mode->encap])
		goto out;

	err = -ENOENT;
	if (!FUNC0(afinfo->owner))
		goto out;

	mode->afinfo = afinfo;
	modemap[mode->encap] = mode;
	err = 0;

out:
	FUNC3(afinfo);
	return err;
}