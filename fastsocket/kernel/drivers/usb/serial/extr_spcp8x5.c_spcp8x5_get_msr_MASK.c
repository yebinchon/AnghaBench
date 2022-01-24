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
typedef  int /*<<< orphan*/  u8 ;
struct usb_device {int /*<<< orphan*/  dev; } ;
typedef  enum spcp8x5_type { ____Placeholder_spcp8x5_type } spcp8x5_type ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GET_UART_STATUS ; 
 int /*<<< orphan*/  GET_UART_STATUS_MSR ; 
 int /*<<< orphan*/  GET_UART_STATUS_TYPE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SPCP825_007_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct usb_device *dev, u8 *status,
			   enum spcp8x5_type type)
{
	u8 *status_buffer;
	int ret;

	/* I return Permited not support here but seem inval device
	 * is more fix */
	if (type == SPCP825_007_TYPE)
		return -EPERM;
	if (status == NULL)
		return -EINVAL;

	status_buffer = FUNC2(1, GFP_KERNEL);
	if (!status_buffer)
		return -ENOMEM;
	status_buffer[0] = status[0];

	ret = FUNC3(dev, FUNC4(dev, 0),
			      GET_UART_STATUS, GET_UART_STATUS_TYPE,
			      0, GET_UART_STATUS_MSR, status_buffer, 1, 100);
	if (ret < 0)
		FUNC0(&dev->dev, "Get MSR = 0x%p failed (error = %d)",
			*status_buffer, ret);

	FUNC0(&dev->dev, "0xc0:0x22:0:6  %d - 0x%p ", ret, *status_buffer);
	status[0] = status_buffer[0];
	FUNC1(status_buffer);

	return ret;
}