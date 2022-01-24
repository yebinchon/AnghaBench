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
struct TYPE_6__ {unsigned int wEvent; void* bEventType; } ;
struct uwb_rc_evt_confirm {scalar_t__ bResultCode; TYPE_3__ rceb; } ;
struct TYPE_5__ {void* wCommand; void* bCommandType; } ;
struct uwb_rc_cmd_scan {unsigned int bChannelNumber; int bScanState; TYPE_2__ rccb; void* wStartTime; } ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; } ;
struct uwb_rc {unsigned int scanning; int scan_type; TYPE_1__ uwb_dev; } ;
typedef  int /*<<< orphan*/  reply ;
typedef  enum uwb_scan_type { ____Placeholder_uwb_scan_type } uwb_scan_type ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* UWB_RC_CET_GENERAL ; 
 unsigned int UWB_RC_CMD_SCAN ; 
 scalar_t__ UWB_RC_RES_SUCCESS ; 
 void* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct uwb_rc_cmd_scan*) ; 
 struct uwb_rc_cmd_scan* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct uwb_rc*,char*,TYPE_2__*,int,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

int FUNC8(struct uwb_rc *rc,
		unsigned channel, enum uwb_scan_type type,
		unsigned bpst_offset)
{
	int result;
	struct uwb_rc_cmd_scan *cmd;
	struct uwb_rc_evt_confirm reply;

	result = -ENOMEM;
	cmd = FUNC3(sizeof(*cmd), GFP_KERNEL);
	if (cmd == NULL)
		goto error_kzalloc;
	FUNC4(&rc->uwb_dev.mutex);
	cmd->rccb.bCommandType = UWB_RC_CET_GENERAL;
	cmd->rccb.wCommand = FUNC0(UWB_RC_CMD_SCAN);
	cmd->bChannelNumber = channel;
	cmd->bScanState = type;
	cmd->wStartTime = FUNC0(bpst_offset);
	reply.rceb.bEventType = UWB_RC_CET_GENERAL;
	reply.rceb.wEvent = UWB_RC_CMD_SCAN;
	result = FUNC6(rc, "SCAN", &cmd->rccb, sizeof(*cmd),
			    &reply.rceb, sizeof(reply));
	if (result < 0)
		goto error_cmd;
	if (reply.bResultCode != UWB_RC_RES_SUCCESS) {
		FUNC1(&rc->uwb_dev.dev,
			"SCAN: command execution failed: %s (%d)\n",
			FUNC7(reply.bResultCode), reply.bResultCode);
		result = -EIO;
		goto error_cmd;
	}
	rc->scanning = channel;
	rc->scan_type = type;
error_cmd:
	FUNC5(&rc->uwb_dev.mutex);
	FUNC2(cmd);
error_kzalloc:
	return result;
}