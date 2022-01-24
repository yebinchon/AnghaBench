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
struct inotify_operations {int dummy; } ;
struct inotify_handle {int /*<<< orphan*/  count; struct inotify_operations const* in_ops; scalar_t__ last_wd; int /*<<< orphan*/  mutex; int /*<<< orphan*/  watches; int /*<<< orphan*/  idr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct inotify_handle* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inotify_handle*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct inotify_handle* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

struct inotify_handle *FUNC8(const struct inotify_operations *ops)
{
	struct inotify_handle *ih;

	ih = FUNC5(sizeof(struct inotify_handle), GFP_KERNEL);
	if (FUNC7(!ih))
		return FUNC0(-ENOMEM);

	FUNC4(&ih->idr);
	FUNC1(&ih->watches);
	FUNC6(&ih->mutex);
	ih->last_wd = 0;
	ih->in_ops = ops;
	FUNC2(&ih->count, 0);
	FUNC3(ih);

	return ih;
}