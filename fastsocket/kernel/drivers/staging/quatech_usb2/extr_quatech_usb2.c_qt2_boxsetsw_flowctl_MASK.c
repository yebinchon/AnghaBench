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
typedef  unsigned char __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  QT2_SW_FLOW_CONTROL_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned char,unsigned char,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct usb_serial *serial, __u16 UartNumber,
			unsigned char stop_char,  unsigned char start_char)
{
	__u16 nSWflowout;

	nSWflowout = start_char << 8;
	nSWflowout = (unsigned short)stop_char;
	return FUNC0(serial->dev, FUNC1(serial->dev, 0),
			QT2_SW_FLOW_CONTROL_MASK, 0x40, nSWflowout, UartNumber,
			NULL, 0, 300);
}