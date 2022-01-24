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
typedef  int u32 ;
struct us_data {unsigned char* iobuf; int /*<<< orphan*/  srb; } ;
struct scatterlist {int dummy; } ;
struct datafab_info {int lun; int ssize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FROM_XFER_BUF ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int USB_STOR_TRANSPORT_ERROR ; 
 int USB_STOR_TRANSPORT_GOOD ; 
 int USB_STOR_XFER_GOOD ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned char,unsigned char) ; 
 int FUNC1 (struct us_data*,unsigned char*,int) ; 
 int FUNC2 (struct us_data*,unsigned char*,int) ; 
 int FUNC3 (struct us_data*,struct datafab_info*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 unsigned char* FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 
 void* FUNC6 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int,int /*<<< orphan*/ ,struct scatterlist**,unsigned int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct us_data *us,
			      struct datafab_info *info,
			      u32 sector,
			      u32 sectors)
{
	unsigned char *command = us->iobuf;
	unsigned char *reply = us->iobuf;
	unsigned char *buffer;
	unsigned char thistime;
	unsigned int totallen, alloclen;
	int len, result;
	unsigned int sg_offset = 0;
	struct scatterlist *sg = NULL;

	// we're working in LBA mode.  according to the ATA spec, 
	// we can support up to 28-bit addressing.  I don't know if Datafab
	// supports beyond 24-bit addressing.  It's kind of hard to test 
	// since it requires > 8GB CF card.
	//
	if (sectors > 0x0FFFFFFF)
		return USB_STOR_TRANSPORT_ERROR;

	if (info->lun == -1) {
		result = FUNC3(us, info);
		if (result != USB_STOR_TRANSPORT_GOOD)
			return result;
	}

	totallen = sectors * info->ssize;

	// Since we don't write more than 64 KB at a time, we have to create
	// a bounce buffer and move the data a piece at a time between the
	// bounce buffer and the actual transfer buffer.

	alloclen = FUNC6(totallen, 65536u);
	buffer = FUNC5(alloclen, GFP_NOIO);
	if (buffer == NULL)
		return USB_STOR_TRANSPORT_ERROR;

	do {
		// loop, never allocate or transfer more than 64k at once
		// (min(128k, 255*info->ssize) is the real limit)

		len = FUNC6(totallen, alloclen);
		thistime = (len / info->ssize) & 0xff;

		// Get the data from the transfer buffer
		FUNC7(buffer, len, us->srb,
				&sg, &sg_offset, FROM_XFER_BUF);

		command[0] = 0;
		command[1] = thistime;
		command[2] = sector & 0xFF;
		command[3] = (sector >> 8) & 0xFF;
		command[4] = (sector >> 16) & 0xFF;

		command[5] = 0xE0 + (info->lun << 4);
		command[5] |= (sector >> 24) & 0x0F;
		command[6] = 0x30;
		command[7] = 0x02;

		// send the command
		result = FUNC2(us, command, 8);
		if (result != USB_STOR_XFER_GOOD)
			goto leave;

		// send the data
		result = FUNC2(us, buffer, len);
		if (result != USB_STOR_XFER_GOOD)
			goto leave;

		// read the result
		result = FUNC1(us, reply, 2);
		if (result != USB_STOR_XFER_GOOD)
			goto leave;

		if (reply[0] != 0x50 && reply[1] != 0) {
			FUNC0("datafab_write_data:  Gah! "
				  "write return code: %02x %02x\n",
				  reply[0], reply[1]);
			result = USB_STOR_TRANSPORT_ERROR;
			goto leave;
		}

		sector += thistime;
		totallen -= len;
	} while (totallen > 0);

	FUNC4(buffer);
	return USB_STOR_TRANSPORT_GOOD;

 leave:
	FUNC4(buffer);
	return USB_STOR_TRANSPORT_ERROR;
}