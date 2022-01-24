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
struct us_data {unsigned char* iobuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned char FUNC1 (unsigned short) ; 
 unsigned char FUNC2 (unsigned short) ; 
 unsigned char USBAT_ATA ; 
 unsigned char USBAT_CMD_WRITE_REGS ; 
 scalar_t__ USBAT_DEV_HP8200 ; 
 int USB_STOR_TRANSPORT_ERROR ; 
 int USB_STOR_TRANSPORT_GOOD ; 
 int USB_STOR_XFER_GOOD ; 
 int US_IOBUF_SIZE ; 
 int FUNC3 (struct us_data*,unsigned char*,unsigned short,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct us_data*,unsigned char*,int) ; 
 scalar_t__ FUNC5 (struct us_data*) ; 
 int FUNC6 (struct us_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct us_data *us,
				unsigned char *registers,
				unsigned char *data_out,
				unsigned short num_registers)
{
	int i, result;
	unsigned char *data = us->iobuf;
	unsigned char *command = us->iobuf;

	FUNC0(num_registers > US_IOBUF_SIZE/2);

	/* Write to multiple registers, ATA access */
	command[0] = 0x40;
	command[1] = USBAT_ATA | USBAT_CMD_WRITE_REGS;

	/* No relevance */
	command[2] = 0;
	command[3] = 0;
	command[4] = 0;
	command[5] = 0;

	/* Number of bytes to be transferred (incl. addresses and data) */
	command[6] = FUNC1(num_registers*2);
	command[7] = FUNC2(num_registers*2);

	/* The setup command */
	result = FUNC4(us, command, 8);
	if (result != USB_STOR_XFER_GOOD)
		return USB_STOR_TRANSPORT_ERROR;

	/* Create the reg/data, reg/data sequence */
	for (i=0; i<num_registers; i++) {
		data[i<<1] = registers[i];
		data[1+(i<<1)] = data_out[i];
	}

	/* Send the data */
	result = FUNC3(us, data, num_registers*2, 0);
	if (result != USB_STOR_XFER_GOOD)
		return USB_STOR_TRANSPORT_ERROR;

	if (FUNC5(us) == USBAT_DEV_HP8200)
		return FUNC6(us, 0);
	else
		return USB_STOR_TRANSPORT_GOOD;
}