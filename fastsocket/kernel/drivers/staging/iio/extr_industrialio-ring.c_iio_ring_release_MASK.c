#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {struct cdev* i_cdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* unmark_in_use ) (struct iio_ring_buffer*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;
struct iio_ring_buffer {TYPE_2__ access; TYPE_1__ access_handler; } ;
struct iio_handler {struct iio_ring_buffer* private; } ;
struct file {int dummy; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IIO_BUSY_BIT_POS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct iio_handler* FUNC1 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_ring_buffer*) ; 

int FUNC3(struct inode *inode, struct file *filp)
{
	struct cdev *cd = inode->i_cdev;
	struct iio_handler *hand = FUNC1(cd);
	struct iio_ring_buffer *rb = hand->private;

	FUNC0(IIO_BUSY_BIT_POS, &rb->access_handler.flags);
	if (rb->access.unmark_in_use)
		rb->access.unmark_in_use(rb);

	return 0;
}