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
struct uts_namespace {int /*<<< orphan*/  name; int /*<<< orphan*/  proc_inum; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct uts_namespace* FUNC0 (int) ; 
 struct uts_namespace* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct uts_namespace*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uts_sem ; 

__attribute__((used)) static struct uts_namespace *FUNC7(struct uts_namespace *old_ns)
{
	struct uts_namespace *ns;
	int err;

	ns = FUNC1();
	if (!ns)
		return FUNC0(-ENOMEM);

	err = FUNC5(&ns->proc_inum);
	if (err) {
		FUNC3(ns);
		return FUNC0(err);
	}

	FUNC2(&uts_sem);
	FUNC4(&ns->name, &old_ns->name, sizeof(ns->name));
	FUNC6(&uts_sem);
	return ns;
}