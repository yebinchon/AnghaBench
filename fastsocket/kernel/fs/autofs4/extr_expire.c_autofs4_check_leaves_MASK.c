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
struct vfsmount {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; scalar_t__ len; } ;
struct dentry {TYPE_1__ d_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct dentry*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct dentry*,unsigned long,int) ; 
 scalar_t__ FUNC2 (struct vfsmount*,struct dentry*) ; 
 scalar_t__ FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  dcache_lock ; 
 struct dentry* FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 struct dentry* FUNC6 (struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dentry *FUNC10(struct vfsmount *mnt,
					   struct dentry *parent,
					   unsigned long timeout,
					   int do_now)
{
	struct dentry *p;

	FUNC0("parent %p %.*s",
		parent, (int)parent->d_name.len, parent->d_name.name);

	FUNC8(&dcache_lock);
	for (p = parent; p; p = FUNC6(p, parent)) {
		/* Negative dentry - give up */
		if (!FUNC7(p))
			continue;

		FUNC0("dentry %p %.*s",
			p, (int) p->d_name.len, p->d_name.name);

		p = FUNC4(p);
		FUNC9(&dcache_lock);

		if (FUNC3(p)) {
			/* Can we umount this guy */
			if (FUNC2(mnt, p))
				goto cont;

			/* Can we expire this guy */
			if (FUNC1(p, timeout, do_now))
				return p;
		}
cont:
		FUNC5(p);
		FUNC8(&dcache_lock);
	}
	FUNC9(&dcache_lock);
	return NULL;
}