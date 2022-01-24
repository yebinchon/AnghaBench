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

/* Variables and functions */
 int /*<<< orphan*/  QT_GET_SET_UART ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned short,unsigned short,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct usb_serial *serial, unsigned short Uart_Number,
		      unsigned short default_divisor, unsigned char default_LCR)
{
	int result;
	unsigned short UartNumandLCR;

	UartNumandLCR = (default_LCR << 8) + Uart_Number;

	result =
	    FUNC0(serial->dev, FUNC1(serial->dev, 0),
			    QT_GET_SET_UART, 0x40, default_divisor,
			    UartNumandLCR, NULL, 0, 300);

	return result;
}