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
struct fsnotify_group {int /*<<< orphan*/  notification_mutex; int /*<<< orphan*/  notification_waitq; } ;
struct file {struct fsnotify_group* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;

/* Variables and functions */
 int POLLIN ; 
 int POLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (struct fsnotify_group*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC4(struct file *file, poll_table *wait)
{
	struct fsnotify_group *group = file->private_data;
	int ret = 0;

	FUNC3(file, &group->notification_waitq, wait);
	FUNC1(&group->notification_mutex);
	if (!FUNC0(group))
		ret = POLLIN | POLLRDNORM;
	FUNC2(&group->notification_mutex);

	return ret;
}