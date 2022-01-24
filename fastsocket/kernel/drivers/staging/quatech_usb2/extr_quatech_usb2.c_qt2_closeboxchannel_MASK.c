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
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  QT_OPEN_CLOSE_CHANNEL ; 
 int /*<<< orphan*/  USBD_TRANSFER_DIRECTION_OUT ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct usb_serial *serial, __u16 Uart_Number)
{
	int result;
	__u8  direcion;
	unsigned int pipe;
	direcion = USBD_TRANSFER_DIRECTION_OUT;
	pipe = FUNC1(serial->dev, 0);
	result = FUNC0(serial->dev, pipe, QT_OPEN_CLOSE_CHANNEL,
		  direcion, 0, Uart_Number, NULL, 0, 5000);
	return result;
}