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
struct inotify_watch {scalar_t__ wd; } ;
struct inotify_handle {scalar_t__ last_wd; int /*<<< orphan*/  idr; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int FUNC0 (int /*<<< orphan*/ *,struct inotify_watch*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct inotify_handle *ih,
				 struct inotify_watch *watch)
{
	int ret;

	do {
		if (FUNC3(!FUNC1(&ih->idr, GFP_NOFS)))
			return -ENOSPC;
		ret = FUNC0(&ih->idr, watch, ih->last_wd+1, &watch->wd);
	} while (ret == -EAGAIN);

	if (FUNC2(!ret))
		ih->last_wd = watch->wd;

	return ret;
}