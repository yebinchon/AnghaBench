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
typedef  int /*<<< orphan*/  usbctlx_rmem_completor_t ;
typedef  int u16 ;
struct TYPE_11__ {int /*<<< orphan*/  rmemresp; } ;
struct TYPE_9__ {void* page; void* offset; void* frmlen; void* type; } ;
struct TYPE_10__ {TYPE_1__ rmemreq; } ;
struct TYPE_12__ {int outbufsize; TYPE_3__ inbuf; void* usercb_data; int /*<<< orphan*/  usercb; int /*<<< orphan*/  cmdcb; scalar_t__ reapable; TYPE_2__ outbuf; } ;
typedef  TYPE_4__ hfa384x_usbctlx_t ;
typedef  int /*<<< orphan*/  hfa384x_t ;
typedef  int /*<<< orphan*/  ctlx_usercb_t ;
typedef  int /*<<< orphan*/  ctlx_cmdcb_t ;
typedef  scalar_t__ CMD_MODE ;

/* Variables and functions */
 scalar_t__ DOWAIT ; 
 int ENOMEM ; 
 int HFA384x_USB_RMEMREQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,...) ; 
 TYPE_4__* FUNC7 () ; 

__attribute__((used)) static int
FUNC8(hfa384x_t *hw,
	       CMD_MODE mode,
	       u16 page,
	       u16 offset,
	       void *data,
	       unsigned int len,
	       ctlx_cmdcb_t cmdcb, ctlx_usercb_t usercb, void *usercb_data)
{
	int result;
	hfa384x_usbctlx_t *ctlx;

	ctlx = FUNC7();
	if (ctlx == NULL) {
		result = -ENOMEM;
		goto done;
	}

	/* Initialize the command */
	ctlx->outbuf.rmemreq.type = FUNC1(HFA384x_USB_RMEMREQ);
	ctlx->outbuf.rmemreq.frmlen =
	    FUNC1(sizeof(ctlx->outbuf.rmemreq.offset) +
			sizeof(ctlx->outbuf.rmemreq.page) + len);
	ctlx->outbuf.rmemreq.offset = FUNC1(offset);
	ctlx->outbuf.rmemreq.page = FUNC1(page);

	ctlx->outbufsize = sizeof(ctlx->outbuf.rmemreq);

	FUNC6("type=0x%04x frmlen=%d offset=0x%04x page=0x%04x\n",
		 ctlx->outbuf.rmemreq.type,
		 ctlx->outbuf.rmemreq.frmlen,
		 ctlx->outbuf.rmemreq.offset, ctlx->outbuf.rmemreq.page);

	FUNC6("pktsize=%zd\n", FUNC0(sizeof(ctlx->outbuf.rmemreq)));

	ctlx->reapable = mode;
	ctlx->cmdcb = cmdcb;
	ctlx->usercb = usercb;
	ctlx->usercb_data = usercb_data;

	result = FUNC3(hw, ctlx);
	if (result != 0) {
		FUNC5(ctlx);
	} else if (mode == DOWAIT) {
		usbctlx_rmem_completor_t completor;

		result =
		    FUNC2(hw, ctlx,
						  FUNC4
						  (&completor,
						   &ctlx->inbuf.rmemresp, data,
						   len));
	}

done:
	return result;
}