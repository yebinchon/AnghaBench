#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct cgroup {struct cgroup* parent; TYPE_3__* dentry; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct TYPE_6__ {TYPE_2__ d_name; } ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 struct cgroup const* dummytop ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 struct dentry* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

int FUNC4(const struct cgroup *cgrp, char *buf, int buflen)
{
	char *start;
	struct dentry *dentry = FUNC2(cgrp->dentry);

	if (!dentry || cgrp == dummytop) {
		/*
		 * Inactive subsystems have no dentry for their root
		 * cgroup
		 */
		FUNC3(buf, "/");
		return 0;
	}

	start = buf + buflen;

	*--start = '\0';
	for (;;) {
		int len = dentry->d_name.len;
		if ((start -= len) < buf)
			return -ENAMETOOLONG;
		FUNC0(start, cgrp->dentry->d_name.name, len);
		cgrp = cgrp->parent;
		if (!cgrp)
			break;
		dentry = FUNC2(cgrp->dentry);
		if (!cgrp->parent)
			continue;
		if (--start < buf)
			return -ENAMETOOLONG;
		*start = '/';
	}
	FUNC1(buf, start, buf + buflen - start);
	return 0;
}