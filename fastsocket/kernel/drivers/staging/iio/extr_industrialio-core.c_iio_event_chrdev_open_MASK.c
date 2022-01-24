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
struct inode {int /*<<< orphan*/  i_cdev; } ;
struct iio_handler {struct iio_event_interface* private; int /*<<< orphan*/  flags; } ;
struct iio_event_interface {int /*<<< orphan*/  event_list_lock; } ;
struct file {struct iio_event_interface* private_data; int /*<<< orphan*/  f_op; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  IIO_BUSY_BIT_POS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct iio_handler* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(struct inode *inode, struct file *filep)
{
	struct iio_handler *hand = FUNC1(inode->i_cdev);
	struct iio_event_interface *ev_int = hand->private;

	FUNC2(&ev_int->event_list_lock);
	if (FUNC4(IIO_BUSY_BIT_POS, &hand->flags)) {
		FUNC0(filep->f_op);
		FUNC3(&ev_int->event_list_lock);
		return -EBUSY;
	}
	filep->private_data = hand->private;
	FUNC3(&ev_int->event_list_lock);

	return 0;
}