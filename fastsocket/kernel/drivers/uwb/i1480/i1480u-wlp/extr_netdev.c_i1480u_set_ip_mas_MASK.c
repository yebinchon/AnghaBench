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
typedef  void* u8 ;
struct TYPE_6__ {int bEventType; void* wEvent; } ;
struct uwb_rc_evt_confirm {scalar_t__ bResultCode; TYPE_3__ rceb; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct uwb_rc {TYPE_1__ uwb_dev; } ;
struct uwb_dev_addr {int dummy; } ;
struct TYPE_5__ {int bCommandType; void* wCommand; } ;
struct i1480u_cmd_set_ip_mas {TYPE_2__ rccb; int /*<<< orphan*/  baMAS; void* type; void* owner; void* stream; struct uwb_dev_addr addr; } ;
typedef  int /*<<< orphan*/  reply ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ UWB_RC_RES_FAIL ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct i1480u_cmd_set_ip_mas*) ; 
 struct i1480u_cmd_set_ip_mas* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (struct uwb_rc*,char*,TYPE_2__*,int,TYPE_3__*,int) ; 

__attribute__((used)) static
int FUNC7(
	struct uwb_rc *rc,
	const struct uwb_dev_addr *dstaddr,
	u8 stream, u8 owner, u8 type, unsigned long *mas)
{

	int result;
	struct i1480u_cmd_set_ip_mas *cmd;
	struct uwb_rc_evt_confirm reply;

	result = -ENOMEM;
	cmd = FUNC3(sizeof(*cmd), GFP_KERNEL);
	if (cmd == NULL)
		goto error_kzalloc;
	cmd->rccb.bCommandType = 0xfd;
	cmd->rccb.wCommand = FUNC0(0x000e);
	cmd->addr = *dstaddr;
	cmd->stream = stream;
	cmd->owner = owner;
	cmd->type = type;
	if (mas == NULL)
		FUNC5(cmd->baMAS, 0x00, sizeof(cmd->baMAS));
	else
		FUNC4(cmd->baMAS, mas, sizeof(cmd->baMAS));
	reply.rceb.bEventType = 0xfd;
	reply.rceb.wEvent = FUNC0(0x000e);
	result = FUNC6(rc, "SET-IP-MAS", &cmd->rccb, sizeof(*cmd),
			    &reply.rceb, sizeof(reply));
	if (result < 0)
		goto error_cmd;
	if (reply.bResultCode != UWB_RC_RES_FAIL) {
		FUNC1(&rc->uwb_dev.dev,
			"SET-IP-MAS: command execution failed: %d\n",
			reply.bResultCode);
		result = -EIO;
	}
error_cmd:
	FUNC2(cmd);
error_kzalloc:
	return result;
}