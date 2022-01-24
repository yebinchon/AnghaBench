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
struct uts_namespace {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long CLONE_NEWUTS ; 
 struct uts_namespace* FUNC1 (struct uts_namespace*) ; 
 int /*<<< orphan*/  FUNC2 (struct uts_namespace*) ; 
 int /*<<< orphan*/  FUNC3 (struct uts_namespace*) ; 

struct uts_namespace *FUNC4(unsigned long flags, struct uts_namespace *old_ns)
{
	struct uts_namespace *new_ns;

	FUNC0(!old_ns);
	FUNC2(old_ns);

	if (!(flags & CLONE_NEWUTS))
		return old_ns;

	new_ns = FUNC1(old_ns);

	FUNC3(old_ns);
	return new_ns;
}