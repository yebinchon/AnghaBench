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
struct file {int /*<<< orphan*/  f_flags; struct ep_data* private_data; } ;
struct ep_data {int /*<<< orphan*/  lock; TYPE_1__* dev; int /*<<< orphan*/ * ep; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOTTY ; 
#define  GADGETFS_CLEAR_HALT 130 
#define  GADGETFS_FIFO_FLUSH 129 
#define  GADGETFS_FIFO_STATUS 128 
 int FUNC0 (int /*<<< orphan*/ ,struct ep_data*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static long FUNC8(struct file *fd, unsigned code, unsigned long value)
{
	struct ep_data		*data = fd->private_data;
	int			status;

	if ((status = FUNC0 (fd->f_flags, data)) < 0)
		return status;

	FUNC2 (&data->dev->lock);
	if (FUNC1 (data->ep != NULL)) {
		switch (code) {
		case GADGETFS_FIFO_STATUS:
			status = FUNC7 (data->ep);
			break;
		case GADGETFS_FIFO_FLUSH:
			FUNC6 (data->ep);
			break;
		case GADGETFS_CLEAR_HALT:
			status = FUNC5 (data->ep);
			break;
		default:
			status = -ENOTTY;
		}
	} else
		status = -ENODEV;
	FUNC3 (&data->dev->lock);
	FUNC4 (&data->lock);
	return status;
}