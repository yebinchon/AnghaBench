#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {int result; int /*<<< orphan*/  cmd_len; int /*<<< orphan*/  cmnd; TYPE_2__* device; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* final_callback ) (struct scsi_cmnd*) ;} ;
struct mts_desc {int /*<<< orphan*/  urb; TYPE_3__ context; int /*<<< orphan*/  ep_out; int /*<<< orphan*/  usb_dev; } ;
typedef  int /*<<< orphan*/  (* mts_scsi_cmnd_callback ) (struct scsi_cmnd*) ;
struct TYPE_5__ {scalar_t__ channel; scalar_t__ id; scalar_t__ lun; TYPE_1__* host; } ;
struct TYPE_4__ {scalar_t__* hostdata; } ;

/* Variables and functions */
 int DID_BAD_TARGET ; 
 int DID_ERROR ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*,struct mts_desc*) ; 
 int /*<<< orphan*/  mts_command_done ; 
 int /*<<< orphan*/  FUNC5 (struct mts_desc*) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct scsi_cmnd *srb, mts_scsi_cmnd_callback callback)
{
	struct mts_desc* desc = (struct mts_desc*)(srb->device->host->hostdata[0]);
	int err = 0;
	int res;

	FUNC1();
	FUNC6(srb);
	FUNC5(desc);

	if ( srb->device->lun || srb->device->id || srb->device->channel ) {

		FUNC0("Command to LUN=%d ID=%d CHANNEL=%d from SCSI layer\n",(int)srb->device->lun,(int)srb->device->id, (int)srb->device->channel );

		FUNC0("this device doesn't exist\n");

		srb->result = DID_BAD_TARGET << 16;

		if(FUNC3(callback != NULL))
			callback(srb);

		goto out;
	}

	
	FUNC8(desc->urb,
		      desc->usb_dev,
		      FUNC9(desc->usb_dev,desc->ep_out),
		      srb->cmnd,
		      srb->cmd_len,
		      mts_command_done,
		      &desc->context
		      );


	FUNC4( srb, desc );
	desc->context.final_callback = callback;
	
	/* here we need ATOMIC as we are called with the iolock */
	res=FUNC10(desc->urb, GFP_ATOMIC);

	if(FUNC7(res)){
		FUNC2("error %d submitting URB\n",(int)res);
		srb->result = DID_ERROR << 16;

		if(FUNC3(callback != NULL))
			callback(srb);

	}
out:
	return err;
}