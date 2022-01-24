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
typedef  scalar_t__ u64 ;
struct cgroup {int /*<<< orphan*/  flags; } ;
struct cftype {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CGRP_NOTIFY_ON_RELEASE ; 
 int /*<<< orphan*/  CGRP_RELEASABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct cgroup *cgrp,
					  struct cftype *cft,
					  u64 val)
{
	FUNC0(CGRP_RELEASABLE, &cgrp->flags);
	if (val)
		FUNC1(CGRP_NOTIFY_ON_RELEASE, &cgrp->flags);
	else
		FUNC0(CGRP_NOTIFY_ON_RELEASE, &cgrp->flags);
	return 0;
}