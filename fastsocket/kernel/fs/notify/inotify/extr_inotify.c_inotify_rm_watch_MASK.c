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
struct inotify_watch {int /*<<< orphan*/  wd; } ;
struct inotify_handle {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct inotify_handle*,int /*<<< orphan*/ ) ; 

int FUNC1(struct inotify_handle *ih,
		     struct inotify_watch *watch)
{
	return FUNC0(ih, watch->wd);
}