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
struct usb_serial {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_serial*,int,int,int,int,int,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_serial*,int,int,int,int,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (struct usb_serial*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct usb_serial *serial)
{
	char *buf;

	buf = FUNC5(1, GFP_KERNEL);
	if (!buf) {
		FUNC2("error kmalloc -> out of mem?");
		return -ENOMEM;
	}

	if (FUNC3(serial))
		FUNC2("IrDA mode");

	/* 3 */
	FUNC1(serial, 3, 0xFE, 0x40, 0x0008, 0x0002);
	FUNC1(serial, 4, 0xFE, 0x40, 0x0008, 0x0001);
	FUNC1(serial, 5, 0xFE, 0x40, 0x0000, 0x0008);
	FUNC1(serial, 6, 0xFE, 0x40, FUNC3(serial) ? 0x0001 : 0x0000,
		    0x000B);

	if (FUNC3(serial)) {
		FUNC1(serial, 1001, 0xFE, 0x40, 0x0000, 0x000C);
		FUNC1(serial, 1002, 0xFE, 0x40, 0x0041, 0x000D);
		FUNC1(serial, 1003, 0xFE, 0x40, 0x0001, 0x000A);
	}

	/* <-- seq7 */
	FUNC0(serial,  7, 0xFE, 0xC0, 0x0000, 0x0003, 0x00, buf);
	FUNC1(serial,  8, 0xFE, 0x40, 0x0080, 0x0003);
	FUNC1(serial,  9, 0xFE, 0x40, 0x001A, 0x0000);
	FUNC1(serial, 10, 0xFE, 0x40, 0x0000, 0x0001);
	FUNC1(serial, 11, 0xFE, 0x40, 0x0000, 0x0003);

	/* <-- seq12 */
	FUNC0(serial, 12, 0xFE, 0xC0, 0x0000, 0x0004, 0x00, buf);
	FUNC1(serial, 13, 0xFE, 0x40, 0x0000, 0x0004);

	/* 14 */
	FUNC0(serial, 14, 0xFE, 0xC0, 0x0000, 0x0004, 0x00, buf);
	FUNC1(serial, 15, 0xFE, 0x40, 0x0000, 0x0004);

	/* 16 */
	FUNC0(serial, 16, 0xFE, 0xC0, 0x0000, 0x0004, 0x00, buf);
	/* --> seq17 */
	FUNC1(serial, 17, 0xFE, 0x40, 0x0001, 0x0004);

	/* <-- seq18 */
	FUNC0(serial, 18, 0xFE, 0xC0, 0x0000, 0x0004, 0x01, buf);

	/* --> seq19 */
	FUNC1(serial, 19, 0xFE, 0x40, 0x0003, 0x0004);

	/* <-- seq20 */
	/* seems like serial port status info (RTS, CTS, ...) */
	/* returns modem control line status?! */
	FUNC0(serial, 20, 0xFE, 0xC0, 0x0000, 0x0006, 0xFF, buf);

	/* set 9600 baud & do some init?! */
	FUNC1(serial, 147, 0xFE, 0x40, 0x0083, 0x0003);
	FUNC1(serial, 148, 0xFE, 0x40, 0x0038, 0x0000);
	FUNC1(serial, 149, 0xFE, 0x40, 0x0001, 0x0001);
	if (FUNC3(serial))
		FUNC1(serial, 1004, 0xFE, 0x40, 0x0000, 0x0009);
	FUNC1(serial, 150, 0xFE, 0x40, 0x0003, 0x0003);
	FUNC0(serial, 151, 0xFE, 0xC0, 0x0000, 0x0004, 0x03, buf);
	FUNC1(serial, 152, 0xFE, 0x40, 0x0000, 0x0003);
	FUNC0(serial, 153, 0xFE, 0xC0, 0x0000, 0x0003, 0x00, buf);
	FUNC1(serial, 154, 0xFE, 0x40, 0x0003, 0x0003);

	FUNC4(buf);
	return 0;
}