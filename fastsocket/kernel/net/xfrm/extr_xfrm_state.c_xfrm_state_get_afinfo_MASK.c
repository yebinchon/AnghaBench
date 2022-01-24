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
struct xfrm_state_afinfo {int dummy; } ;

/* Variables and functions */
 unsigned int NPROTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 struct xfrm_state_afinfo** xfrm_state_afinfo ; 
 int /*<<< orphan*/  xfrm_state_afinfo_lock ; 

__attribute__((used)) static struct xfrm_state_afinfo *FUNC3(unsigned int family)
{
	struct xfrm_state_afinfo *afinfo;
	if (FUNC2(family >= NPROTO))
		return NULL;
	FUNC0(&xfrm_state_afinfo_lock);
	afinfo = xfrm_state_afinfo[family];
	if (FUNC2(!afinfo))
		FUNC1(&xfrm_state_afinfo_lock);
	return afinfo;
}