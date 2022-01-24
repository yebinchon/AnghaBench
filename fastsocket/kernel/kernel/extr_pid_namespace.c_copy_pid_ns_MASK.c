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
struct pid_namespace {int dummy; } ;

/* Variables and functions */
 unsigned long CLONE_NEWPID ; 
 int /*<<< orphan*/  EINVAL ; 
 struct pid_namespace* FUNC0 (int /*<<< orphan*/ ) ; 
 struct pid_namespace* FUNC1 (struct pid_namespace*) ; 
 int /*<<< orphan*/  current ; 
 struct pid_namespace* FUNC2 (struct pid_namespace*) ; 
 struct pid_namespace* FUNC3 (int /*<<< orphan*/ ) ; 

struct pid_namespace *FUNC4(unsigned long flags, struct pid_namespace *old_ns)
{
	if (!(flags & CLONE_NEWPID))
		return FUNC2(old_ns);
	if (FUNC3(current) != old_ns)
		return FUNC0(-EINVAL);
	return FUNC1(old_ns);
}