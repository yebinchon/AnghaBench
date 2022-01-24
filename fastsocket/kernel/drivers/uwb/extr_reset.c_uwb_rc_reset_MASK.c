#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct uwb_rccb {int /*<<< orphan*/  wCommand; void* bCommandType; } ;
struct TYPE_4__ {int /*<<< orphan*/  wEvent; void* bEventType; } ;
struct uwb_rc_evt_confirm {scalar_t__ bResultCode; TYPE_2__ rceb; } ;
struct TYPE_3__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; } ;
struct uwb_rc {TYPE_1__ uwb_dev; } ;
typedef  int /*<<< orphan*/  reply ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* UWB_RC_CET_GENERAL ; 
 int /*<<< orphan*/  UWB_RC_CMD_RESET ; 
 scalar_t__ UWB_RC_RES_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct uwb_rccb*) ; 
 struct uwb_rccb* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct uwb_rc*,char*,struct uwb_rccb*,size_t,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

int FUNC8(struct uwb_rc *rc)
{
	int result = -ENOMEM;
	struct uwb_rc_evt_confirm reply;
	struct uwb_rccb *cmd;
	size_t cmd_size = sizeof(*cmd);

	FUNC4(&rc->uwb_dev.mutex);
	cmd = FUNC3(sizeof(*cmd), GFP_KERNEL);
	if (cmd == NULL)
		goto error_kzalloc;
	cmd->bCommandType = UWB_RC_CET_GENERAL;
	cmd->wCommand = FUNC0(UWB_RC_CMD_RESET);
	reply.rceb.bEventType = UWB_RC_CET_GENERAL;
	reply.rceb.wEvent = UWB_RC_CMD_RESET;
	result = FUNC6(rc, "RESET", cmd, cmd_size,
			    &reply.rceb, sizeof(reply));
	if (result < 0)
		goto error_cmd;
	if (reply.bResultCode != UWB_RC_RES_SUCCESS) {
		FUNC1(&rc->uwb_dev.dev,
			"RESET: command execution failed: %s (%d)\n",
			FUNC7(reply.bResultCode), reply.bResultCode);
		result = -EIO;
	}
error_cmd:
	FUNC2(cmd);
error_kzalloc:
	FUNC5(&rc->uwb_dev.mutex);
	return result;
}