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
struct scsi_cmnd {int dummy; } ;
struct scatterlist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TO_XFER_BUF ; 
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 unsigned int FUNC1 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*,unsigned int) ; 
 unsigned int FUNC3 (unsigned char*,unsigned int,struct scsi_cmnd*,struct scatterlist**,unsigned int*,int /*<<< orphan*/ ) ; 

void FUNC4(unsigned char *buffer,
	unsigned int buflen, struct scsi_cmnd *srb)
{
	unsigned int offset = 0;
	struct scatterlist *sg = NULL;

	buflen = FUNC0(buflen, FUNC1(srb));
	buflen = FUNC3(buffer, buflen, srb, &sg, &offset,
			TO_XFER_BUF);
	if (buflen < FUNC1(srb))
		FUNC2(srb, FUNC1(srb) - buflen);
}