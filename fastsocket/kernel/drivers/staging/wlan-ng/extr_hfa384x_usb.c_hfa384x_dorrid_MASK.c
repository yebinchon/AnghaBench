#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usbctlx_rrid_completor_t ;
typedef  int u16 ;
struct TYPE_11__ {int /*<<< orphan*/  rridresp; } ;
struct TYPE_9__ {void* rid; void* frmlen; void* type; } ;
struct TYPE_10__ {TYPE_1__ rridreq; } ;
struct TYPE_12__ {int outbufsize; TYPE_3__ inbuf; void* usercb_data; int /*<<< orphan*/  usercb; int /*<<< orphan*/  cmdcb; scalar_t__ reapable; TYPE_2__ outbuf; } ;
typedef  TYPE_4__ hfa384x_usbctlx_t ;
typedef  int /*<<< orphan*/  hfa384x_t ;
typedef  int /*<<< orphan*/  ctlx_usercb_t ;
typedef  int /*<<< orphan*/  ctlx_cmdcb_t ;
typedef  scalar_t__ CMD_MODE ;

/* Variables and functions */
 scalar_t__ DOWAIT ; 
 int ENOMEM ; 
 int HFA384x_USB_RRIDREQ ; 
 void* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 TYPE_4__* FUNC5 () ; 

__attribute__((used)) static int
FUNC6(hfa384x_t *hw,
	       CMD_MODE mode,
	       u16 rid,
	       void *riddata,
	       unsigned int riddatalen,
	       ctlx_cmdcb_t cmdcb, ctlx_usercb_t usercb, void *usercb_data)
{
	int result;
	hfa384x_usbctlx_t *ctlx;

	ctlx = FUNC5();
	if (ctlx == NULL) {
		result = -ENOMEM;
		goto done;
	}

	/* Initialize the command */
	ctlx->outbuf.rridreq.type = FUNC0(HFA384x_USB_RRIDREQ);
	ctlx->outbuf.rridreq.frmlen =
	    FUNC0(sizeof(ctlx->outbuf.rridreq.rid));
	ctlx->outbuf.rridreq.rid = FUNC0(rid);

	ctlx->outbufsize = sizeof(ctlx->outbuf.rridreq);

	ctlx->reapable = mode;
	ctlx->cmdcb = cmdcb;
	ctlx->usercb = usercb;
	ctlx->usercb_data = usercb_data;

	/* Submit the CTLX */
	result = FUNC2(hw, ctlx);
	if (result != 0) {
		FUNC4(ctlx);
	} else if (mode == DOWAIT) {
		usbctlx_rrid_completor_t completor;

		result =
		    FUNC1(hw, ctlx,
						  FUNC3
						  (&completor,
						   &ctlx->inbuf.rridresp,
						   riddata, riddatalen));
	}

done:
	return result;
}