#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  dentry; } ;
struct file {int f_mode; TYPE_2__ f_path; } ;
struct TYPE_5__ {int /*<<< orphan*/  owner; int /*<<< orphan*/  default_hard; } ;
struct TYPE_8__ {TYPE_1__ mach; int /*<<< orphan*/  hard; } ;
struct TYPE_7__ {scalar_t__ busy; } ;

/* Variables and functions */
 int FMODE_WRITE ; 
 TYPE_4__ dmasound ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 int shared_resource_owner ; 
 scalar_t__ shared_resources_initialised ; 
 int FUNC3 (struct file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_3__ write_sq ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct file*) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct file *file)
{
	int rc = 0;

	FUNC0();

	if (file->f_mode & FMODE_WRITE) {
		if (write_sq.busy)
			rc = FUNC3(file, file->f_path.dentry);

		FUNC4() ; /* make sure dma is stopped and all is quiet */
		FUNC6();
		write_sq.busy = 0;
	}

	if (file->f_mode & shared_resource_owner) { /* it's us that has them */
		shared_resource_owner = 0 ;
		shared_resources_initialised = 0 ;
		dmasound.hard = dmasound.mach.default_hard ;
	}

	FUNC1(dmasound.mach.owner);

#if 0 /* blocking open() */
	/* Wake up a process waiting for the queue being released.
	 * Note: There may be several processes waiting for a call
	 * to open() returning. */

	/* Iain: hmm I don't understand this next comment ... */
	/* There is probably a DOS atack here. They change the mode flag. */
	/* XXX add check here,*/
	read_sq_wake_up(file); /* checks f_mode */
	write_sq_wake_up(file); /* checks f_mode */
#endif /* blocking open() */

	FUNC5();

	return rc;
}