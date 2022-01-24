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
 unsigned char FUNC0 (unsigned short) ; 
 unsigned char FUNC1 (unsigned short) ; 
 unsigned char USBAT_ATA ; 
 unsigned char USBAT_ATA_DATA ; 
 unsigned char USBAT_CMD_READ_BLOCK ; 
 int USB_STOR_TRANSPORT_ERROR ; 
 int USB_STOR_TRANSPORT_GOOD ; 
 int USB_STOR_XFER_GOOD ; 
 int FUNC2 (struct us_data*,void*,unsigned short,int) ; 
 int FUNC3 (struct us_data*,unsigned char*,int) ; 

__attribute__((used)) static int FUNC4(struct us_data *us,
			    void* buf,
			    unsigned short len,
			    int use_sg)
{
	int result;
	unsigned char *command = us->iobuf;

	if (!len)
		return USB_STOR_TRANSPORT_GOOD;

	command[0] = 0xC0;
	command[1] = USBAT_ATA | USBAT_CMD_READ_BLOCK;
	command[2] = USBAT_ATA_DATA;
	command[3] = 0;
	command[4] = 0;
	command[5] = 0;
	command[6] = FUNC0(len);
	command[7] = FUNC1(len);

	result = FUNC3(us, command, 8);
	if (result != USB_STOR_XFER_GOOD)
		return USB_STOR_TRANSPORT_ERROR;

	result = FUNC2(us, buf, len, use_sg);
	return (result == USB_STOR_XFER_GOOD ?
			USB_STOR_TRANSPORT_GOOD : USB_STOR_TRANSPORT_ERROR);
}