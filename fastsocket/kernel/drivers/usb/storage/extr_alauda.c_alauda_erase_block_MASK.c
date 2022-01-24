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
 int ALAUDA_BULK_CMD ; 
 int ALAUDA_BULK_ERASE_BLOCK ; 
 int FUNC0 (struct us_data*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int USB_STOR_XFER_GOOD ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned char,...) ; 
 int FUNC5 (struct us_data*,int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct us_data *us, u16 pba)
{
	int rc;
	unsigned char command[] = {
		ALAUDA_BULK_CMD, ALAUDA_BULK_ERASE_BLOCK, FUNC1(pba),
		FUNC3(pba), 0, FUNC2(pba), 0x02, 0, FUNC0(us)
	};
	unsigned char buf[2];

	FUNC4("alauda_erase_block: Erasing PBA %d\n", pba);

	rc = FUNC5(us, us->send_bulk_pipe,
		command, 9, NULL);
	if (rc != USB_STOR_XFER_GOOD)
		return rc;

	rc = FUNC5(us, us->recv_bulk_pipe,
		buf, 2, NULL);
	if (rc != USB_STOR_XFER_GOOD)
		return rc;

	FUNC4("alauda_erase_block: Erase result: %02X %02X\n",
		buf[0], buf[1]);
	return rc;
}