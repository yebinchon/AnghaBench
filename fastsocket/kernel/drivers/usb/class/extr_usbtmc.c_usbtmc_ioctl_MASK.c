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
struct usbtmc_device_data {int /*<<< orphan*/  io_mutex; scalar_t__ zombie; } ;
struct file {struct usbtmc_device_data* private_data; } ;

/* Variables and functions */
 int EBADRQC ; 
 int ENODEV ; 
#define  USBTMC_IOCTL_ABORT_BULK_IN 133 
#define  USBTMC_IOCTL_ABORT_BULK_OUT 132 
#define  USBTMC_IOCTL_CLEAR 131 
#define  USBTMC_IOCTL_CLEAR_IN_HALT 130 
#define  USBTMC_IOCTL_CLEAR_OUT_HALT 129 
#define  USBTMC_IOCTL_INDICATOR_PULSE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct usbtmc_device_data*) ; 
 int FUNC3 (struct usbtmc_device_data*) ; 
 int FUNC4 (struct usbtmc_device_data*) ; 
 int FUNC5 (struct usbtmc_device_data*) ; 
 int FUNC6 (struct usbtmc_device_data*) ; 
 int FUNC7 (struct usbtmc_device_data*) ; 

__attribute__((used)) static long FUNC8(struct file *file, unsigned int cmd, unsigned long arg)
{
	struct usbtmc_device_data *data;
	int retval = -EBADRQC;

	data = file->private_data;
	FUNC0(&data->io_mutex);
	if (data->zombie) {
		retval = -ENODEV;
		goto skip_io_on_zombie;
	}

	switch (cmd) {
	case USBTMC_IOCTL_CLEAR_OUT_HALT:
		retval = FUNC6(data);
		break;

	case USBTMC_IOCTL_CLEAR_IN_HALT:
		retval = FUNC5(data);
		break;

	case USBTMC_IOCTL_INDICATOR_PULSE:
		retval = FUNC7(data);
		break;

	case USBTMC_IOCTL_CLEAR:
		retval = FUNC4(data);
		break;

	case USBTMC_IOCTL_ABORT_BULK_OUT:
		retval = FUNC3(data);
		break;

	case USBTMC_IOCTL_ABORT_BULK_IN:
		retval = FUNC2(data);
		break;
	}

skip_io_on_zombie:
	FUNC1(&data->io_mutex);
	return retval;
}