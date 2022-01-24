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
typedef  int /*<<< orphan*/  usbctlx_wmem_completor_t ;
typedef  int u16 ;
struct TYPE_11__ {int /*<<< orphan*/  wmemresp; } ;
struct TYPE_9__ {int /*<<< orphan*/  data; void* page; void* offset; void* frmlen; void* type; } ;
struct TYPE_10__ {TYPE_1__ wmemreq; } ;
struct TYPE_12__ {int outbufsize; TYPE_3__ inbuf; void* usercb_data; int /*<<< orphan*/  usercb; int /*<<< orphan*/  cmdcb; scalar_t__ reapable; TYPE_2__ outbuf; } ;
typedef  TYPE_4__ hfa384x_usbctlx_t ;
typedef  int /*<<< orphan*/  hfa384x_t ;
typedef  int /*<<< orphan*/  hfa384x_cmdresult_t ;
typedef  int /*<<< orphan*/  ctlx_usercb_t ;
typedef  int /*<<< orphan*/  ctlx_cmdcb_t ;
typedef  scalar_t__ CMD_MODE ;

/* Variables and functions */
 scalar_t__ DOWAIT ; 
 int ENOMEM ; 
 int HFA384x_USB_WMEMREQ ; 
 void* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,unsigned int) ; 
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

	FUNC6("page=0x%04x offset=0x%04x len=%d\n", page, offset, len);

	ctlx = FUNC7();
	if (ctlx == NULL) {
		result = -ENOMEM;
		goto done;
	}

	/* Initialize the command */
	ctlx->outbuf.wmemreq.type = FUNC0(HFA384x_USB_WMEMREQ);
	ctlx->outbuf.wmemreq.frmlen =
	    FUNC0(sizeof(ctlx->outbuf.wmemreq.offset) +
			sizeof(ctlx->outbuf.wmemreq.page) + len);
	ctlx->outbuf.wmemreq.offset = FUNC0(offset);
	ctlx->outbuf.wmemreq.page = FUNC0(page);
	FUNC5(ctlx->outbuf.wmemreq.data, data, len);

	ctlx->outbufsize = sizeof(ctlx->outbuf.wmemreq.type) +
	    sizeof(ctlx->outbuf.wmemreq.frmlen) +
	    sizeof(ctlx->outbuf.wmemreq.offset) +
	    sizeof(ctlx->outbuf.wmemreq.page) + len;

	ctlx->reapable = mode;
	ctlx->cmdcb = cmdcb;
	ctlx->usercb = usercb;
	ctlx->usercb_data = usercb_data;

	result = FUNC2(hw, ctlx);
	if (result != 0) {
		FUNC4(ctlx);
	} else if (mode == DOWAIT) {
		usbctlx_wmem_completor_t completor;
		hfa384x_cmdresult_t wmemresult;

		result = FUNC1(hw,
						       ctlx,
						       FUNC3
						       (&completor,
							&ctlx->inbuf.wmemresp,
							&wmemresult));
	}

done:
	return result;
}