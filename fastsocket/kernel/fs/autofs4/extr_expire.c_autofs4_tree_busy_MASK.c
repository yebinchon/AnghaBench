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
struct dentry {int /*<<< orphan*/  d_count; TYPE_1__ d_name; } ;
struct autofs_info {void* last_used; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct dentry*,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,unsigned long,int) ; 
 struct autofs_info* FUNC3 (struct dentry*) ; 
 scalar_t__ FUNC4 (struct vfsmount*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 scalar_t__ FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  dcache_lock ; 
 struct dentry* FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*) ; 
 void* jiffies ; 
 struct dentry* FUNC9 (struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct vfsmount *mnt,
	       		     struct dentry *top,
			     unsigned long timeout,
			     int do_now)
{
	struct autofs_info *top_ino = FUNC3(top);
	struct dentry *p;

	FUNC0("top %p %.*s",
		top, (int)top->d_name.len, top->d_name.name);

	/* Negative dentry - give up */
	if (!FUNC10(top))
		return 1;

	FUNC11(&dcache_lock);
	for (p = top; p; p = FUNC9(p, top)) {
		/* Negative dentry - give up */
		if (!FUNC10(p))
			continue;

		FUNC0("dentry %p %.*s",
			p, (int) p->d_name.len, p->d_name.name);

		p = FUNC7(p);
		FUNC12(&dcache_lock);

		/*
		 * Is someone visiting anywhere in the subtree ?
		 * If there's no mount we need to check the usage
		 * count for the autofs dentry.
		 * If the fs is busy update the expiry counter.
		 */
		if (FUNC6(p)) {
			if (FUNC4(mnt, p)) {
				top_ino->last_used = jiffies;
				FUNC8(p);
				return 1;
			}
		} else {
			struct autofs_info *ino = FUNC3(p);
			unsigned int ino_count = FUNC1(&ino->count);

			/*
			 * Clean stale dentries below that have not been
			 * invalidated after a mount fail during lookup
			 */
			FUNC5(p);

			/* allow for dget above and top is already dgot */
			if (p == top)
				ino_count += 2;
			else
				ino_count++;

			if (FUNC1(&p->d_count) > ino_count) {
				top_ino->last_used = jiffies;
				FUNC8(p);
				return 1;
			}
		}
		FUNC8(p);
		FUNC11(&dcache_lock);
	}
	FUNC12(&dcache_lock);

	/* Timeout of a tree mount is ultimately determined by its top dentry */
	if (!FUNC2(top, timeout, do_now))
		return 1;

	return 0;
}