#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  cmdresp; } ;
struct TYPE_9__ {scalar_t__ state; int /*<<< orphan*/  usercb_data; int /*<<< orphan*/  (* usercb ) (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ;TYPE_1__ inbuf; } ;
typedef  TYPE_2__ hfa384x_usbctlx_t ;
typedef  int /*<<< orphan*/  hfa384x_t ;
struct TYPE_10__ {int /*<<< orphan*/  status; } ;
typedef  TYPE_3__ hfa384x_cmdresult_t ;
typedef  int /*<<< orphan*/  cmdresult ;

/* Variables and functions */
 scalar_t__ CTLX_COMPLETE ; 
 int /*<<< orphan*/  HFA384x_CMD_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static void FUNC4(hfa384x_t *hw, const hfa384x_usbctlx_t *ctlx)
{
	if (ctlx->usercb != NULL) {
		hfa384x_cmdresult_t cmdresult;

		if (ctlx->state != CTLX_COMPLETE) {
			FUNC1(&cmdresult, 0, sizeof(cmdresult));
			cmdresult.status =
			    FUNC0(HFA384x_CMD_ERR);
		} else {
			FUNC3(&ctlx->inbuf.cmdresp, &cmdresult);
		}

		ctlx->usercb(hw, &cmdresult, ctlx->usercb_data);
	}
}