#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usbctlx_cmd_completor_t ;
struct TYPE_13__ {int /*<<< orphan*/  cmdresp; } ;
struct TYPE_11__ {void* parm2; void* parm1; void* parm0; void* cmd; void* type; } ;
struct TYPE_12__ {TYPE_1__ cmdreq; } ;
struct TYPE_14__ {int outbufsize; TYPE_3__ inbuf; void* usercb_data; int /*<<< orphan*/  usercb; int /*<<< orphan*/  cmdcb; scalar_t__ reapable; TYPE_2__ outbuf; } ;
typedef  TYPE_4__ hfa384x_usbctlx_t ;
typedef  int /*<<< orphan*/  hfa384x_t ;
struct TYPE_15__ {int /*<<< orphan*/  result; int /*<<< orphan*/  parm2; int /*<<< orphan*/  parm1; int /*<<< orphan*/  parm0; int /*<<< orphan*/  cmd; } ;
typedef  TYPE_5__ hfa384x_metacmd_t ;
typedef  int /*<<< orphan*/  ctlx_usercb_t ;
typedef  int /*<<< orphan*/  ctlx_cmdcb_t ;
typedef  scalar_t__ CMD_MODE ;

/* Variables and functions */
 scalar_t__ DOWAIT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HFA384x_USB_CMDREQ ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC6 () ; 

__attribute__((used)) static int
FUNC7(hfa384x_t *hw,
	      CMD_MODE mode,
	      hfa384x_metacmd_t *cmd,
	      ctlx_cmdcb_t cmdcb, ctlx_usercb_t usercb, void *usercb_data)
{
	int result;
	hfa384x_usbctlx_t *ctlx;

	ctlx = FUNC6();
	if (ctlx == NULL) {
		result = -ENOMEM;
		goto done;
	}

	/* Initialize the command */
	ctlx->outbuf.cmdreq.type = FUNC0(HFA384x_USB_CMDREQ);
	ctlx->outbuf.cmdreq.cmd = FUNC0(cmd->cmd);
	ctlx->outbuf.cmdreq.parm0 = FUNC0(cmd->parm0);
	ctlx->outbuf.cmdreq.parm1 = FUNC0(cmd->parm1);
	ctlx->outbuf.cmdreq.parm2 = FUNC0(cmd->parm2);

	ctlx->outbufsize = sizeof(ctlx->outbuf.cmdreq);

	FUNC5("cmdreq: cmd=0x%04x "
		 "parm0=0x%04x parm1=0x%04x parm2=0x%04x\n",
		 cmd->cmd, cmd->parm0, cmd->parm1, cmd->parm2);

	ctlx->reapable = mode;
	ctlx->cmdcb = cmdcb;
	ctlx->usercb = usercb;
	ctlx->usercb_data = usercb_data;

	result = FUNC2(hw, ctlx);
	if (result != 0) {
		FUNC4(ctlx);
	} else if (mode == DOWAIT) {
		usbctlx_cmd_completor_t completor;

		result =
		    FUNC1(hw, ctlx,
						  FUNC3(&completor,
								     &ctlx->
								     inbuf.
								     cmdresp,
								     &cmd->
								     result));
	}

done:
	return result;
}