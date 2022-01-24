#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_serial {TYPE_1__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCT_U232_GET_MODEM_STAT_REQUEST ; 
 int /*<<< orphan*/  MCT_U232_GET_MODEM_STAT_SIZE ; 
 int /*<<< orphan*/  MCT_U232_GET_REQUEST_TYPE ; 
 int /*<<< orphan*/  WDR_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usb_serial *serial,
						unsigned char *msr)
{
	int rc;
	rc = FUNC2(serial->dev, FUNC3(serial->dev, 0),
			MCT_U232_GET_MODEM_STAT_REQUEST,
			MCT_U232_GET_REQUEST_TYPE,
			0, 0, msr, MCT_U232_GET_MODEM_STAT_SIZE,
			WDR_TIMEOUT);
	if (rc < 0) {
		FUNC1(&serial->dev->dev,
			"Get MODEM STATus failed (error = %d)\n", rc);
		*msr = 0;
	}
	FUNC0("get_modem_stat: 0x%x", *msr);
	return rc;
}