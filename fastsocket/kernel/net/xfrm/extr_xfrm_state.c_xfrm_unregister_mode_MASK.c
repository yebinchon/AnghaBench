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
struct xfrm_state_afinfo {struct xfrm_mode** mode_map; } ;
struct xfrm_mode {size_t encap; TYPE_1__* afinfo; } ;
struct TYPE_2__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 int ENOENT ; 
 size_t XFRM_MODE_MAX ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 struct xfrm_state_afinfo* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct xfrm_state_afinfo*) ; 

int FUNC5(struct xfrm_mode *mode, int family)
{
	struct xfrm_state_afinfo *afinfo;
	struct xfrm_mode **modemap;
	int err;

	if (FUNC2(mode->encap >= XFRM_MODE_MAX))
		return -EINVAL;

	afinfo = FUNC3(family);
	if (FUNC2(afinfo == NULL))
		return -EAFNOSUPPORT;

	err = -ENOENT;
	modemap = afinfo->mode_map;
	if (FUNC0(modemap[mode->encap] == mode)) {
		modemap[mode->encap] = NULL;
		FUNC1(mode->afinfo->owner);
		err = 0;
	}

	FUNC4(afinfo);
	return err;
}