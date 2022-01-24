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
typedef  int /*<<< orphan*/  u32 ;
struct fhci_usb {TYPE_2__* actual_frame; struct fhci_hcd* fhci; } ;
struct fhci_hcd {TYPE_1__* pram; } ;
struct TYPE_4__ {int frame_num; scalar_t__ total_bytes; int /*<<< orphan*/  frame_status; int /*<<< orphan*/  tds_list; } ;
struct TYPE_3__ {int /*<<< orphan*/  frame_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FRAME_IS_PREPARED ; 
 int /*<<< orphan*/  FUNC0 (struct fhci_usb*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32 FUNC3(struct fhci_usb *usb)
{
	struct fhci_hcd *fhci = usb->fhci;

	if (!FUNC2(&usb->actual_frame->tds_list)) {
		if ((((FUNC1(&fhci->pram->frame_num) & 0x07ff) -
		      usb->actual_frame->frame_num) & 0x7ff) > 5)
			FUNC0(usb);
		else
			return -EINVAL;
	}

	usb->actual_frame->frame_status = FRAME_IS_PREPARED;
	usb->actual_frame->frame_num = FUNC1(&fhci->pram->frame_num) & 0x7ff;
	usb->actual_frame->total_bytes = 0;

	return 0;
}