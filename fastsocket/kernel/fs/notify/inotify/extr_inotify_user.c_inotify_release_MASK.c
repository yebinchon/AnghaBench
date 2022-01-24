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
struct inode {int dummy; } ;
struct fsnotify_group {int dummy; } ;
struct file {struct fsnotify_group* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fsnotify_group*) ; 
 int /*<<< orphan*/  FUNC1 (struct fsnotify_group*) ; 

__attribute__((used)) static int FUNC2(struct inode *ignored, struct file *file)
{
	struct fsnotify_group *group = file->private_data;

	FUNC0(group);

	/* free this group, matching get was inotify_init->fsnotify_obtain_group */
	FUNC1(group);

	return 0;
}