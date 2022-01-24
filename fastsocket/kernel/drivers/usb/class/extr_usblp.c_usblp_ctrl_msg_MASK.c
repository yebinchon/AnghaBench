#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct usblp {int ifnum; size_t current_protocol; int /*<<< orphan*/  dev; TYPE_1__* protocol; } ;
struct TYPE_2__ {int alt_setting; } ;

/* Variables and functions */
 int /*<<< orphan*/  USBLP_CTL_TIMEOUT ; 
 int USBLP_REQ_GET_ID ; 
 int USB_TYPE_CLASS ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int,int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usblp *usblp, int request, int type, int dir, int recip, int value, void *buf, int len)
{
	int retval;
	int index = usblp->ifnum;

	/* High byte has the interface index.
	   Low byte has the alternate setting.
	 */
	if ((request == USBLP_REQ_GET_ID) && (type == USB_TYPE_CLASS)) {
	  index = (usblp->ifnum<<8)|usblp->protocol[usblp->current_protocol].alt_setting;
	}

	retval = FUNC1(usblp->dev,
		dir ? FUNC2(usblp->dev, 0) : FUNC3(usblp->dev, 0),
		request, type | dir | recip, value, index, buf, len, USBLP_CTL_TIMEOUT);
	FUNC0("usblp_control_msg: rq: 0x%02x dir: %d recip: %d value: %d idx: %d len: %#x result: %d",
		request, !!dir, recip, value, index, len, retval);
	return retval < 0 ? retval : 0;
}