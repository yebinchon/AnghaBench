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
struct us_data {unsigned char* iobuf; int /*<<< orphan*/  send_bulk_pipe; } ;

/* Variables and functions */
 int EIO ; 
 unsigned char FUNC0 (int) ; 
 unsigned char LUNBITS ; 
 unsigned char FUNC1 (int) ; 
 int USB_STOR_XFER_GOOD ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (struct us_data*,unsigned char*,int) ; 
 int FUNC4 (struct us_data*,int /*<<< orphan*/ ,unsigned char*,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct us_data *us,
	      unsigned long Waddress, unsigned long Eaddress,
	      int nr_of_pages, int bulklen, unsigned char *buf, int use_sg) {

	unsigned char *command = us->iobuf;
	int result;

	command[0] = 0xE9;
	command[1] = LUNBITS;

	command[2] = FUNC1(Waddress>>16);
	command[3] = FUNC0(Waddress>>16);
	command[4] = FUNC1(Waddress & 0xFFFF);
	command[5] = FUNC0(Waddress & 0xFFFF);

	command[6] = FUNC1(Eaddress>>16);
	command[7] = FUNC0(Eaddress>>16);
	command[8] = FUNC1(Eaddress & 0xFFFF);
	command[9] = FUNC0(Eaddress & 0xFFFF);

	command[10] = FUNC1(nr_of_pages);
	command[11] = FUNC0(nr_of_pages);

	result = FUNC3(us, command, 12);

	if (result) {
		FUNC2("Result for send_control in sddr09_writeX %d\n",
			  result);
		return result;
	}

	result = FUNC4(us, us->send_bulk_pipe,
				       buf, bulklen, use_sg, NULL);

	if (result != USB_STOR_XFER_GOOD) {
		FUNC2("Result for bulk_transfer in sddr09_writeX %d\n",
			  result);
		return -EIO;
	}
	return 0;
}