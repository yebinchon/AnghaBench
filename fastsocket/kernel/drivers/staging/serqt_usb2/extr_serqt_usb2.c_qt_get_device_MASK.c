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
struct usb_serial {int /*<<< orphan*/  dev; } ;
struct qt_get_device_data {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  QT_SET_GET_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qt_get_device_data*,unsigned char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct usb_serial *serial,
			 struct qt_get_device_data *device_data)
{
	int result;
	unsigned char *transfer_buffer;

	transfer_buffer =
	    FUNC1(sizeof(struct qt_get_device_data), GFP_KERNEL);
	if (!transfer_buffer)
		return -ENOMEM;

	result = FUNC3(serial->dev, FUNC4(serial->dev, 0),
				 QT_SET_GET_DEVICE, 0xc0, 0, 0,
				 transfer_buffer,
				 sizeof(struct qt_get_device_data), 300);
	if (result > 0)
		FUNC2(device_data, transfer_buffer,
		       sizeof(struct qt_get_device_data));
	FUNC0(transfer_buffer);

	return result;
}