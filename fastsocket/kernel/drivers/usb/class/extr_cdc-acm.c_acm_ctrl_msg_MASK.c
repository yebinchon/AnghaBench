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
struct acm {TYPE_3__* control; int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {TYPE_2__* altsetting; } ;
struct TYPE_4__ {int /*<<< orphan*/  bInterfaceNumber; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_RT_ACM ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,void*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct acm *acm, int request, int value,
							void *buf, int len)
{
	int retval = FUNC1(acm->dev, FUNC2(acm->dev, 0),
		request, USB_RT_ACM, value,
		acm->control->altsetting[0].desc.bInterfaceNumber,
		buf, len, 5000);
	FUNC0("acm_control_msg: rq: 0x%02x val: %#x len: %#x result: %d",
						request, value, len, retval);
	return retval < 0 ? retval : 0;
}