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
struct xfrm_state_afinfo {struct xfrm_mode** mode_map; } ;
struct xfrm_mode {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 unsigned int XFRM_MODE_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 struct xfrm_state_afinfo* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct xfrm_state_afinfo*) ; 

__attribute__((used)) static struct xfrm_mode *FUNC5(unsigned int encap, int family)
{
	struct xfrm_state_afinfo *afinfo;
	struct xfrm_mode *mode;
	int modload_attempted = 0;

	if (FUNC2(encap >= XFRM_MODE_MAX))
		return NULL;

retry:
	afinfo = FUNC3(family);
	if (FUNC2(afinfo == NULL))
		return NULL;

	mode = afinfo->mode_map[encap];
	if (FUNC2(mode && !FUNC1(mode->owner)))
		mode = NULL;
	if (!mode && !modload_attempted) {
		FUNC4(afinfo);
		FUNC0("xfrm-mode-%d-%d", family, encap);
		modload_attempted = 1;
		goto retry;
	}

	FUNC4(afinfo);
	return mode;
}