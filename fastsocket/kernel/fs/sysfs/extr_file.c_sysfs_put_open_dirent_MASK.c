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
struct sysfs_open_dirent {int /*<<< orphan*/  refcnt; } ;
struct TYPE_2__ {struct sysfs_open_dirent* open; } ;
struct sysfs_dirent {TYPE_1__ s_attr; } ;
struct sysfs_buffer {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sysfs_open_dirent*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  sysfs_open_dirent_lock ; 

__attribute__((used)) static void FUNC5(struct sysfs_dirent *sd,
				  struct sysfs_buffer *buffer)
{
	struct sysfs_open_dirent *od = sd->s_attr.open;
	unsigned long flags;

	FUNC3(&sysfs_open_dirent_lock, flags);

	FUNC2(&buffer->list);
	if (FUNC0(&od->refcnt))
		sd->s_attr.open = NULL;
	else
		od = NULL;

	FUNC4(&sysfs_open_dirent_lock, flags);

	FUNC1(od);
}