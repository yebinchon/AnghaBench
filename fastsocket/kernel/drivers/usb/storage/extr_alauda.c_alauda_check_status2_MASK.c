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
struct us_data {int /*<<< orphan*/  recv_bulk_pipe; int /*<<< orphan*/  send_bulk_pipe; } ;

/* Variables and functions */
 int ALAUDA_BULK_CMD ; 
 int ALAUDA_BULK_GET_STATUS2 ; 
 unsigned char ALAUDA_STATUS_ERROR ; 
 int FUNC0 (struct us_data*) ; 
 int USB_STOR_XFER_ERROR ; 
 int USB_STOR_XFER_GOOD ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned char,unsigned char,unsigned char) ; 
 int FUNC2 (struct us_data*,int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct us_data *us)
{
	int rc;
	unsigned char command[] = {
		ALAUDA_BULK_CMD, ALAUDA_BULK_GET_STATUS2,
		0, 0, 0, 0, 3, 0, FUNC0(us)
	};
	unsigned char data[3];

	rc = FUNC2(us, us->send_bulk_pipe,
		command, 9, NULL);
	if (rc != USB_STOR_XFER_GOOD)
		return rc;

	rc = FUNC2(us, us->recv_bulk_pipe,
		data, 3, NULL);
	if (rc != USB_STOR_XFER_GOOD)
		return rc;

	FUNC1("alauda_check_status2: %02X %02X %02X\n", data[0], data[1], data[2]);
	if (data[0] & ALAUDA_STATUS_ERROR)
		return USB_STOR_XFER_ERROR;

	return USB_STOR_XFER_GOOD;
}