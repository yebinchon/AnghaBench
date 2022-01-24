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
struct sysfs_open_dirent {int /*<<< orphan*/  buffers; int /*<<< orphan*/  poll; int /*<<< orphan*/  event; int /*<<< orphan*/  refcnt; } ;
struct TYPE_2__ {struct sysfs_open_dirent* open; } ;
struct sysfs_dirent {TYPE_1__ s_attr; } ;
struct sysfs_buffer {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sysfs_open_dirent*) ; 
 struct sysfs_open_dirent* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sysfs_open_dirent_lock ; 

__attribute__((used)) static int FUNC9(struct sysfs_dirent *sd,
				 struct sysfs_buffer *buffer)
{
	struct sysfs_open_dirent *od, *new_od = NULL;

 retry:
	FUNC7(&sysfs_open_dirent_lock);

	if (!sd->s_attr.open && new_od) {
		sd->s_attr.open = new_od;
		new_od = NULL;
	}

	od = sd->s_attr.open;
	if (od) {
		FUNC1(&od->refcnt);
		FUNC6(&buffer->list, &od->buffers);
	}

	FUNC8(&sysfs_open_dirent_lock);

	if (od) {
		FUNC4(new_od);
		return 0;
	}

	/* not there, initialize a new one and retry */
	new_od = FUNC5(sizeof(*new_od), GFP_KERNEL);
	if (!new_od)
		return -ENOMEM;

	FUNC2(&new_od->refcnt, 0);
	FUNC2(&new_od->event, 1);
	FUNC3(&new_od->poll);
	FUNC0(&new_od->buffers);
	goto retry;
}