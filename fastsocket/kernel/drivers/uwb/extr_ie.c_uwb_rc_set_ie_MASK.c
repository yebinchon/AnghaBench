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
struct TYPE_4__ {int /*<<< orphan*/  wEvent; int /*<<< orphan*/  bEventType; } ;
struct uwb_rc_evt_set_ie {int bResultCode; TYPE_2__ rceb; } ;
struct uwb_rc_cmd_set_ie {int /*<<< orphan*/  wIELength; int /*<<< orphan*/  rccb; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;
struct uwb_rc {TYPE_1__ uwb_dev; } ;
typedef  int /*<<< orphan*/  reply ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  UWB_RC_CET_GENERAL ; 
 int /*<<< orphan*/  UWB_RC_CMD_SET_IE ; 
 int UWB_RC_RES_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct uwb_rc*,char*,int /*<<< orphan*/ *,scalar_t__,TYPE_2__*,int) ; 
 int FUNC3 (int) ; 

int FUNC4(struct uwb_rc *rc, struct uwb_rc_cmd_set_ie *cmd)
{
	int result;
	struct device *dev = &rc->uwb_dev.dev;
	struct uwb_rc_evt_set_ie reply;

	reply.rceb.bEventType = UWB_RC_CET_GENERAL;
	reply.rceb.wEvent = UWB_RC_CMD_SET_IE;
	result = FUNC2(rc, "SET-IE", &cmd->rccb,
			    sizeof(*cmd) + FUNC1(cmd->wIELength),
			    &reply.rceb, sizeof(reply));
	if (result < 0)
		goto error_cmd;
	else if (result != sizeof(reply)) {
		FUNC0(dev, "SET-IE: not enough data to decode reply "
			"(%d bytes received vs %zu needed)\n",
			result, sizeof(reply));
		result = -EIO;
	} else if (reply.bResultCode != UWB_RC_RES_SUCCESS) {
		FUNC0(dev, "SET-IE: command execution failed: %s (%d)\n",
			FUNC3(reply.bResultCode), reply.bResultCode);
		result = -EIO;
	} else
		result = 0;
error_cmd:
	return result;
}