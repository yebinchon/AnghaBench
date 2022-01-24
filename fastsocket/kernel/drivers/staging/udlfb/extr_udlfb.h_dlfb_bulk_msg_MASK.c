#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dlfb_data {TYPE_1__* tx_urb; int /*<<< orphan*/  done; } ;
struct TYPE_3__ {int actual_length; int transfer_buffer_length; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct dlfb_data *dev_info, int len)
{
	int ret;

	FUNC0(&dev_info->done);

	dev_info->tx_urb->actual_length = 0;
	dev_info->tx_urb->transfer_buffer_length = len;

	ret = FUNC3(dev_info->tx_urb, GFP_KERNEL);
	if (!FUNC4(&dev_info->done, 1000)) {
		FUNC2(dev_info->tx_urb);
		FUNC1("usb timeout !!!\n");
	}

	return dev_info->tx_urb->actual_length;
}