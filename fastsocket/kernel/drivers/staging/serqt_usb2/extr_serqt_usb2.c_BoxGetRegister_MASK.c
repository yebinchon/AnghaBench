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
typedef  int /*<<< orphan*/  __u8 ;
typedef  int __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  QT_GET_SET_REGISTER ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned short,unsigned short,void*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct usb_serial *serial, unsigned short Uart_Number,
			  unsigned short Register_Num, __u8 *pValue)
{
	int result;
	__u16 current_length;

	current_length = sizeof(struct qt_get_device_data);

	result =
	    FUNC0(serial->dev, FUNC1(serial->dev, 0),
			    QT_GET_SET_REGISTER, 0xC0, Register_Num,
			    Uart_Number, (void *)pValue, sizeof(*pValue), 300);

	return result;
}