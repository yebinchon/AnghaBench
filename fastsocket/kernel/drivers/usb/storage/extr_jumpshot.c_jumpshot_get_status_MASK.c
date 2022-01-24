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
struct us_data {int* iobuf; int /*<<< orphan*/  recv_ctrl_pipe; } ;

/* Variables and functions */
 int USB_STOR_TRANSPORT_ERROR ; 
 int USB_STOR_TRANSPORT_GOOD ; 
 int USB_STOR_XFER_GOOD ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct us_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int*,int) ; 

__attribute__((used)) static int FUNC2(struct us_data  *us)
{
	int rc;

	if (!us)
		return USB_STOR_TRANSPORT_ERROR;

	// send the setup
	rc = FUNC1(us, us->recv_ctrl_pipe,
				   0, 0xA0, 0, 7, us->iobuf, 1);

	if (rc != USB_STOR_XFER_GOOD)
		return USB_STOR_TRANSPORT_ERROR;

	if (us->iobuf[0] != 0x50) {
		FUNC0("jumpshot_get_status:  0x%2x\n",
			  us->iobuf[0]);
		return USB_STOR_TRANSPORT_ERROR;
	}

	return USB_STOR_TRANSPORT_GOOD;
}