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
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  VENDOR_READ_REQUEST ; 
 int /*<<< orphan*/  VENDOR_READ_REQUEST_TYPE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned char) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(__u16 value, __u16 index,
		struct usb_serial *serial, unsigned char *buf)
{
	int res = FUNC1(serial->dev, FUNC2(serial->dev, 0),
			VENDOR_READ_REQUEST, VENDOR_READ_REQUEST_TYPE,
			value, index, buf, 1, 100);
	FUNC0("0x%x:0x%x:0x%x:0x%x  %d - %x", VENDOR_READ_REQUEST_TYPE,
			VENDOR_READ_REQUEST, value, index, res, buf[0]);
	return res;
}