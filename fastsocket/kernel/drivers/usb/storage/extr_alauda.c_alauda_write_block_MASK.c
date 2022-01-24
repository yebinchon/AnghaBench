#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct us_data {int /*<<< orphan*/  send_bulk_pipe; scalar_t__ extra; } ;
struct alauda_info {int /*<<< orphan*/  wr_ep; } ;
struct TYPE_2__ {int pagesize; int blocksize; } ;

/* Variables and functions */
 int ALAUDA_BULK_CMD ; 
 int ALAUDA_BULK_WRITE_BLOCK ; 
 TYPE_1__ FUNC0 (struct us_data*) ; 
 int FUNC1 (struct us_data*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int USB_STOR_XFER_GOOD ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct us_data*) ; 
 int FUNC7 (struct us_data*,int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct us_data *us, u16 pba, unsigned char *data)
{
	int rc;
	struct alauda_info *info = (struct alauda_info *) us->extra;
	unsigned char command[] = {
		ALAUDA_BULK_CMD, ALAUDA_BULK_WRITE_BLOCK, FUNC2(pba),
		FUNC4(pba), 0, FUNC3(pba), 32, 0, FUNC1(us)
	};

	FUNC5("alauda_write_block: pba %d\n", pba);

	rc = FUNC7(us, us->send_bulk_pipe,
		command, 9, NULL);
	if (rc != USB_STOR_XFER_GOOD)
		return rc;

	rc = FUNC7(us, info->wr_ep, data,
		(FUNC0(us).pagesize + 64) * FUNC0(us).blocksize,
		NULL);
	if (rc != USB_STOR_XFER_GOOD)
		return rc;

	return FUNC6(us);
}