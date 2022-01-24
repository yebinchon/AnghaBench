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
struct inotify_watch {int /*<<< orphan*/  wd; int /*<<< orphan*/  inode; int /*<<< orphan*/  h_list; int /*<<< orphan*/  i_list; } ;
struct inotify_handle {int /*<<< orphan*/  idr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct inotify_watch *watch,
				  struct inotify_handle *ih)
{
	FUNC2(&watch->i_list);
	FUNC2(&watch->h_list);

	if (!FUNC1(watch->inode))
		FUNC3(watch->inode, 0);

	FUNC0(&ih->idr, watch->wd);
}