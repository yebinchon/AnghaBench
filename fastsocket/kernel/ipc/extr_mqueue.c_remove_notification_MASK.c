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
struct TYPE_2__ {scalar_t__ sigev_notify; } ;
struct mqueue_inode_info {int /*<<< orphan*/ * notify_owner; int /*<<< orphan*/  notify_cookie; int /*<<< orphan*/  notify_sock; TYPE_1__ notify; } ;

/* Variables and functions */
 int /*<<< orphan*/  NOTIFY_REMOVED ; 
 scalar_t__ SIGEV_THREAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mqueue_inode_info *info)
{
	if (info->notify_owner != NULL &&
	    info->notify.sigev_notify == SIGEV_THREAD) {
		FUNC2(info->notify_cookie, NOTIFY_REMOVED);
		FUNC0(info->notify_sock, info->notify_cookie);
	}
	FUNC1(info->notify_owner);
	info->notify_owner = NULL;
}