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
struct usb_device_status {scalar_t__ lastev; } ;
struct poll_table_struct {int dummy; } ;
struct file {int f_mode; struct usb_device_status* private_data; } ;

/* Variables and functions */
 int FMODE_READ ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int POLLIN ; 
 scalar_t__ conndiscevcnt ; 
 int /*<<< orphan*/  deviceconndiscwq ; 
 int /*<<< orphan*/  FUNC0 (struct usb_device_status*) ; 
 struct usb_device_status* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static unsigned int FUNC5(struct file *file,
				    struct poll_table_struct *wait)
{
	struct usb_device_status *st = file->private_data;
	unsigned int mask = 0;

	FUNC2();
	if (!st) {
		st = FUNC1(sizeof(struct usb_device_status), GFP_KERNEL);

		/* we may have dropped BKL -
		 * need to check for having lost the race */
		if (file->private_data) {
			FUNC0(st);
			st = file->private_data;
			goto lost_race;
		}
		/* we haven't lost - check for allocation failure now */
		if (!st) {
			FUNC4();
			return POLLIN;
		}

		/*
		 * need to prevent the module from being unloaded, since
		 * proc_unregister does not call the release method and
		 * we would have a memory leak
		 */
		st->lastev = conndiscevcnt;
		file->private_data = st;
		mask = POLLIN;
	}
lost_race:
	if (file->f_mode & FMODE_READ)
		FUNC3(file, &deviceconndiscwq, wait);
	if (st->lastev != conndiscevcnt)
		mask |= POLLIN;
	st->lastev = conndiscevcnt;
	FUNC4();
	return mask;
}