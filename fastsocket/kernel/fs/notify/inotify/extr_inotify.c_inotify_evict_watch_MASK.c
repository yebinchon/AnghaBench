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
struct inotify_watch {TYPE_1__* ih; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inotify_watch*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct inotify_watch*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct inotify_watch *watch)
{
	FUNC0(watch);
	FUNC2(&watch->ih->mutex);
	FUNC1(watch->ih, watch);
	FUNC3(&watch->ih->mutex);
}