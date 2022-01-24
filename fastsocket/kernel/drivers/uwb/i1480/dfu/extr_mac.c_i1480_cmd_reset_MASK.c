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
typedef  scalar_t__ u8 ;
struct uwb_rceb {int /*<<< orphan*/  wEvent; void* bEventType; } ;
struct uwb_rccb {int /*<<< orphan*/  wCommand; void* bCommandType; } ;
struct i1480 {int /*<<< orphan*/  dev; scalar_t__ evt_buf; scalar_t__ cmd_buf; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 void* UWB_RC_CET_GENERAL ; 
 int /*<<< orphan*/  UWB_RC_CMD_RESET ; 
 scalar_t__ UWB_RC_RES_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC2 (struct i1480*,char*,int,int) ; 

__attribute__((used)) static
int FUNC3(struct i1480 *i1480)
{
	int result;
	struct uwb_rccb *cmd = (void *) i1480->cmd_buf;
	struct i1480_evt_reset {
		struct uwb_rceb rceb;
		u8 bResultCode;
	} __attribute__((packed)) *reply = (void *) i1480->evt_buf;

	result = -ENOMEM;
	cmd->bCommandType = UWB_RC_CET_GENERAL;
	cmd->wCommand = FUNC0(UWB_RC_CMD_RESET);
	reply->rceb.bEventType = UWB_RC_CET_GENERAL;
	reply->rceb.wEvent = UWB_RC_CMD_RESET;
	result = FUNC2(i1480, "RESET", sizeof(*cmd), sizeof(*reply));
	if (result < 0)
		goto out;
	if (reply->bResultCode != UWB_RC_RES_SUCCESS) {
		FUNC1(i1480->dev, "RESET: command execution failed: %u\n",
			reply->bResultCode);
		result = -EIO;
	}
out:
	return result;

}