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
 int /*<<< orphan*/  QT2_STOP_RECEIVE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned short,unsigned short,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct usb_serial *serial, unsigned short uart_number,
		unsigned short stop)
{
	return FUNC0(serial->dev, FUNC1(serial->dev, 0),
		QT2_STOP_RECEIVE, 0x40, stop, uart_number, NULL, 0, 300);
}