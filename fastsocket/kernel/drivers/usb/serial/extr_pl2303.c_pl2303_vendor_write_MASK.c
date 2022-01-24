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
 int /*<<< orphan*/  VENDOR_WRITE_REQUEST ; 
 int /*<<< orphan*/  VENDOR_WRITE_REQUEST_TYPE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(__u16 value, __u16 index,
		struct usb_serial *serial)
{
	int res = FUNC1(serial->dev, FUNC2(serial->dev, 0),
			VENDOR_WRITE_REQUEST, VENDOR_WRITE_REQUEST_TYPE,
			value, index, NULL, 0, 100);
	FUNC0("0x%x:0x%x:0x%x:0x%x  %d", VENDOR_WRITE_REQUEST_TYPE,
			VENDOR_WRITE_REQUEST, value, index, res);
	return res;
}