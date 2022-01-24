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
typedef  size_t u8 ;
struct wahc {int /*<<< orphan*/  xfer_list_lock; int /*<<< orphan*/  xfer_list; TYPE_1__* usb_iface; } ;
struct wa_xfer {unsigned int segs; int /*<<< orphan*/  segs_submitted; struct wa_seg** seg; int /*<<< orphan*/  list_node; TYPE_2__* ep; struct wahc* wa; } ;
struct wa_seg {int /*<<< orphan*/  list_node; int /*<<< orphan*/  status; } ;
struct TYPE_6__ {int /*<<< orphan*/  wRequests; } ;
struct wa_rpipe {int /*<<< orphan*/  seg_lock; int /*<<< orphan*/  seg_list; int /*<<< orphan*/  segs_available; TYPE_3__ descr; } ;
struct device {int dummy; } ;
struct TYPE_5__ {struct wa_rpipe* hcpriv; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  WA_SEG_DELAYED ; 
 int FUNC1 (struct wa_rpipe*,struct wa_xfer*,struct wa_seg*) ; 
 int /*<<< orphan*/  FUNC2 (struct wa_xfer*) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,struct wa_xfer*,unsigned int,...) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct wa_xfer *xfer)
{
	int result;
	struct wahc *wa = xfer->wa;
	struct device *dev = &wa->usb_iface->dev;
	unsigned cnt;
	struct wa_seg *seg;
	unsigned long flags;
	struct wa_rpipe *rpipe = xfer->ep->hcpriv;
	size_t maxrequests = FUNC5(rpipe->descr.wRequests);
	u8 available;
	u8 empty;

	FUNC8(&wa->xfer_list_lock, flags);
	FUNC6(&xfer->list_node, &wa->xfer_list);
	FUNC9(&wa->xfer_list_lock, flags);

	FUNC0(FUNC3(&rpipe->segs_available) > maxrequests);
	result = 0;
	FUNC8(&rpipe->seg_lock, flags);
	for (cnt = 0; cnt < xfer->segs; cnt++) {
		available = FUNC3(&rpipe->segs_available);
		empty = FUNC7(&rpipe->seg_list);
		seg = xfer->seg[cnt];
		FUNC4(dev, "xfer %p#%u: available %u empty %u (%s)\n",
			xfer, cnt, available, empty,
			available == 0 || !empty ? "delayed" : "submitted");
		if (available == 0 || !empty) {
			FUNC4(dev, "xfer %p#%u: delayed\n", xfer, cnt);
			seg->status = WA_SEG_DELAYED;
			FUNC6(&seg->list_node, &rpipe->seg_list);
		} else {
			result = FUNC1(rpipe, xfer, seg);
			if (result < 0) {
				FUNC2(xfer);
				goto error_seg_submit;
			}
		}
		xfer->segs_submitted++;
	}
error_seg_submit:
	FUNC9(&rpipe->seg_lock, flags);
	return result;
}