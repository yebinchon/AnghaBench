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
typedef  union ata_cdb {int dummy; } ata_cdb ;
struct us_data {int /*<<< orphan*/ * extra; } ;
struct scsi_cmnd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct us_data*,struct scsi_cmnd*,union ata_cdb*) ; 
 int FUNC2 (struct scsi_cmnd*,struct us_data*,union ata_cdb*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*,int) ; 
 int FUNC4 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct scsi_cmnd *srb, struct us_data *us)
{
	int sendToTransport = 1, orig_bufflen;
	union ata_cdb ataCdb;

	/* Make sure driver was initialized */

	if (us->extra == NULL)
		FUNC0("ERROR Driver not initialized\n");

	FUNC5(srb, 0);
	/* scsi_bufflen might change in protocol translation to ata */
	orig_bufflen = FUNC4(srb);
	sendToTransport = FUNC2(srb, us, &ataCdb);

	/* send the command to the transport layer */
	if (sendToTransport)
		FUNC1(us, srb, &ataCdb);

	FUNC3(srb, orig_bufflen);
}