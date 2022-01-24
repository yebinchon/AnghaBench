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
struct list_head {int dummy; } ;
struct audit_watch {int /*<<< orphan*/  rules; struct audit_parent* parent; } ;
struct audit_parent {int /*<<< orphan*/  ilist; int /*<<< orphan*/  wdata; int /*<<< orphan*/  watches; } ;
struct audit_krule {int /*<<< orphan*/  rlist; struct audit_watch* watch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct audit_watch*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct audit_krule *krule, struct list_head *list)
{
	struct audit_watch *watch = krule->watch;
	struct audit_parent *parent = watch->parent;

	FUNC2(&krule->rlist);

	if (FUNC3(&watch->rules)) {
		FUNC0(watch);

		if (FUNC3(&parent->watches)) {
			/* Put parent on the inotify un-registration
			 * list.  Grab a reference before releasing
			 * audit_filter_mutex, to be released in
			 * audit_inotify_unregister().
			 * If filesystem is going away, just leave
			 * the sucker alone, eviction will take
			 * care of it. */
			if (FUNC4(&parent->wdata))
				FUNC1(&parent->ilist, list);
		}
	}
}