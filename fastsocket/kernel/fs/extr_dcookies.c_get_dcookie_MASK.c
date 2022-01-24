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
struct path {TYPE_1__* dentry; } ;
struct dcookie_struct {int dummy; } ;
struct TYPE_2__ {int d_flags; } ;

/* Variables and functions */
 int DCACHE_COOKIE ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct dcookie_struct* FUNC0 (struct path*) ; 
 int /*<<< orphan*/  dcookie_mutex ; 
 unsigned long FUNC1 (struct dcookie_struct*) ; 
 struct dcookie_struct* FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct path *path, unsigned long *cookie)
{
	int err = 0;
	struct dcookie_struct * dcs;

	FUNC4(&dcookie_mutex);

	if (!FUNC3()) {
		err = -EINVAL;
		goto out;
	}

	if (path->dentry->d_flags & DCACHE_COOKIE) {
		dcs = FUNC2((unsigned long)path->dentry);
	} else {
		dcs = FUNC0(path);
		if (!dcs) {
			err = -ENOMEM;
			goto out;
		}
	}

	*cookie = FUNC1(dcs);

out:
	FUNC5(&dcookie_mutex);
	return err;
}