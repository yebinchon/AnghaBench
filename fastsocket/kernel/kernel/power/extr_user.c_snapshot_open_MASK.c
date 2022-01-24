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
struct snapshot_handle {int dummy; } ;
struct snapshot_data {int swap; int mode; scalar_t__ platform_support; scalar_t__ ready; scalar_t__ frozen; int /*<<< orphan*/  handle; } ;
struct inode {int dummy; } ;
struct file {int f_flags; struct snapshot_data* private_data; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int ENOSYS ; 
 int O_ACCMODE ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  PM_HIBERNATION_PREPARE ; 
 int /*<<< orphan*/  PM_POST_HIBERNATION ; 
 int /*<<< orphan*/  PM_POST_RESTORE ; 
 int /*<<< orphan*/  PM_RESTORE_PREPARE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  pm_mutex ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  snapshot_device_available ; 
 struct snapshot_data snapshot_state ; 
 int FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ swsusp_resume_device ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(struct inode *inode, struct file *filp)
{
	struct snapshot_data *data;
	int error;

	FUNC4(&pm_mutex);

	if (!FUNC0(&snapshot_device_available, -1, 0)) {
		error = -EBUSY;
		goto Unlock;
	}

	if ((filp->f_flags & O_ACCMODE) == O_RDWR) {
		FUNC1(&snapshot_device_available);
		error = -ENOSYS;
		goto Unlock;
	}
	if(FUNC2()) {
		FUNC1(&snapshot_device_available);
		error = -ENOMEM;
		goto Unlock;
	}
	FUNC6(inode, filp);
	data = &snapshot_state;
	filp->private_data = data;
	FUNC3(&data->handle, 0, sizeof(struct snapshot_handle));
	if ((filp->f_flags & O_ACCMODE) == O_RDONLY) {
		/* Hibernating.  The image device should be accessible. */
		data->swap = swsusp_resume_device ?
			FUNC8(swsusp_resume_device, 0, NULL) : -1;
		data->mode = O_RDONLY;
		error = FUNC7(PM_HIBERNATION_PREPARE);
		if (error)
			FUNC7(PM_POST_HIBERNATION);
	} else {
		/*
		 * Resuming.  We may need to wait for the image device to
		 * appear.
		 */
		FUNC9();

		data->swap = -1;
		data->mode = O_WRONLY;
		error = FUNC7(PM_RESTORE_PREPARE);
		if (error)
			FUNC7(PM_POST_RESTORE);
	}
	if (error)
		FUNC1(&snapshot_device_available);
	data->frozen = 0;
	data->ready = 0;
	data->platform_support = 0;

 Unlock:
	FUNC5(&pm_mutex);

	return error;
}