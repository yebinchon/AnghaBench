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
struct cgroup {int dummy; } ;
struct cftype {int /*<<< orphan*/  private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cgroup*) ; 
 int /*<<< orphan*/  devcgroup_mutex ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct cgroup *cgrp, struct cftype *cft,
				  const char *buffer)
{
	int retval;

	FUNC2(&devcgroup_mutex);
	retval = FUNC1(FUNC0(cgrp),
					 cft->private, buffer);
	FUNC3(&devcgroup_mutex);
	return retval;
}