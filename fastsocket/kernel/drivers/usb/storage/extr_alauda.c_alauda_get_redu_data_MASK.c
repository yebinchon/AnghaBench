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
typedef  int /*<<< orphan*/  u16 ;
struct us_data {int /*<<< orphan*/  recv_bulk_pipe; int /*<<< orphan*/  send_bulk_pipe; } ;

/* Variables and functions */
 unsigned char ALAUDA_BULK_CMD ; 
 unsigned char ALAUDA_BULK_GET_REDU_DATA ; 
 unsigned char FUNC0 (struct us_data*) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC3 (int /*<<< orphan*/ ) ; 
 int USB_STOR_XFER_GOOD ; 
 int FUNC4 (struct us_data*,int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct us_data *us, u16 pba, unsigned char *data)
{
	int rc;
	unsigned char command[] = {
		ALAUDA_BULK_CMD, ALAUDA_BULK_GET_REDU_DATA,
		FUNC1(pba), FUNC3(pba), 0, FUNC2(pba), 0, 0, FUNC0(us)
	};

	rc = FUNC4(us, us->send_bulk_pipe,
		command, 9, NULL);
	if (rc != USB_STOR_XFER_GOOD)
		return rc;

	return FUNC4(us, us->recv_bulk_pipe,
		data, 16, NULL);
}