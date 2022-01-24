#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct wahc {int /*<<< orphan*/  dti_edc; TYPE_4__* buf_in_urb; struct wa_xfer_result* xfer_result; TYPE_1__* usb_iface; } ;
struct wa_xfer_result {int bTransferSegment; size_t bTransferStatus; int /*<<< orphan*/  dwTransferLength; } ;
struct wa_xfer {size_t segs; size_t seg_size; int /*<<< orphan*/  lock; TYPE_3__* urb; int /*<<< orphan*/  segs_done; scalar_t__ is_dma; scalar_t__ is_inbound; TYPE_2__* ep; struct wa_seg** seg; } ;
struct wa_seg {scalar_t__ status; int result; int /*<<< orphan*/  index; } ;
struct wa_rpipe {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_8__ {struct wa_seg* context; void* transfer_buffer_length; int /*<<< orphan*/  transfer_flags; scalar_t__ transfer_buffer; scalar_t__ transfer_dma; int /*<<< orphan*/  status; } ;
struct TYPE_7__ {scalar_t__ transfer_buffer; scalar_t__ transfer_dma; } ;
struct TYPE_6__ {struct wa_rpipe* hcpriv; } ;
struct TYPE_5__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EDC_ERROR_TIMEFRAME ; 
 int /*<<< orphan*/  EDC_MAX_ERRORS ; 
 int /*<<< orphan*/  EINPROGRESS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 scalar_t__ WA_SEG_ABORTED ; 
 scalar_t__ WA_SEG_DONE ; 
 scalar_t__ WA_SEG_DTI_PENDING ; 
 scalar_t__ WA_SEG_ERROR ; 
 scalar_t__ WA_SEG_PENDING ; 
 scalar_t__ WA_SEG_SUBMITTED ; 
 int /*<<< orphan*/  FUNC1 (struct wa_xfer*) ; 
 size_t FUNC2 (struct wa_xfer*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,struct wa_xfer*,size_t,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 unsigned int FUNC8 (struct wa_rpipe*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC11 (int) ; 
 int FUNC12 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct wahc*) ; 
 int /*<<< orphan*/  FUNC14 (struct wahc*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (struct wa_xfer*) ; 
 int /*<<< orphan*/  FUNC16 (struct wa_rpipe*) ; 
 int FUNC17 (size_t) ; 

__attribute__((used)) static void FUNC18(struct wahc *wa, struct wa_xfer *xfer)
{
	int result;
	struct device *dev = &wa->usb_iface->dev;
	unsigned long flags;
	u8 seg_idx;
	struct wa_seg *seg;
	struct wa_rpipe *rpipe;
	struct wa_xfer_result *xfer_result = wa->xfer_result;
	u8 done = 0;
	u8 usb_status;
	unsigned rpipe_ready = 0;

	FUNC9(&xfer->lock, flags);
	seg_idx = xfer_result->bTransferSegment & 0x7f;
	if (FUNC11(seg_idx >= xfer->segs))
		goto error_bad_seg;
	seg = xfer->seg[seg_idx];
	rpipe = xfer->ep->hcpriv;
	usb_status = xfer_result->bTransferStatus;
	FUNC3(dev, "xfer %p#%u: bTransferStatus 0x%02x (seg %u)\n",
		xfer, seg_idx, usb_status, seg->status);
	if (seg->status == WA_SEG_ABORTED
	    || seg->status == WA_SEG_ERROR)	/* already handled */
		goto segment_aborted;
	if (seg->status == WA_SEG_SUBMITTED)	/* ops, got here */
		seg->status = WA_SEG_PENDING;	/* before wa_seg{_dto}_cb() */
	if (seg->status != WA_SEG_PENDING) {
		if (FUNC7())
			FUNC4(dev, "xfer %p#%u: Bad segment state %u\n",
				xfer, seg_idx, seg->status);
		seg->status = WA_SEG_PENDING;	/* workaround/"fix" it */
	}
	if (usb_status & 0x80) {
		seg->result = FUNC17(usb_status);
		FUNC4(dev, "DTI: xfer %p#%u failed (0x%02x)\n",
			xfer, seg->index, usb_status);
		goto error_complete;
	}
	/* FIXME: we ignore warnings, tally them for stats */
	if (usb_status & 0x40) 		/* Warning?... */
		usb_status = 0;		/* ... pass */
	if (xfer->is_inbound) {	/* IN data phase: read to buffer */
		seg->status = WA_SEG_DTI_PENDING;
		FUNC0(wa->buf_in_urb->status == -EINPROGRESS);
		if (xfer->is_dma) {
			wa->buf_in_urb->transfer_dma =
				xfer->urb->transfer_dma
				+ seg_idx * xfer->seg_size;
			wa->buf_in_urb->transfer_flags
				|= URB_NO_TRANSFER_DMA_MAP;
		} else {
			wa->buf_in_urb->transfer_buffer =
				xfer->urb->transfer_buffer
				+ seg_idx * xfer->seg_size;
			wa->buf_in_urb->transfer_flags
				&= ~URB_NO_TRANSFER_DMA_MAP;
		}
		wa->buf_in_urb->transfer_buffer_length =
			FUNC6(xfer_result->dwTransferLength);
		wa->buf_in_urb->context = seg;
		result = FUNC12(wa->buf_in_urb, GFP_ATOMIC);
		if (result < 0)
			goto error_submit_buf_in;
	} else {
		/* OUT data phase, complete it -- */
		seg->status = WA_SEG_DONE;
		seg->result = FUNC6(xfer_result->dwTransferLength);
		xfer->segs_done++;
		rpipe_ready = FUNC8(rpipe);
		done = FUNC2(xfer);
	}
	FUNC10(&xfer->lock, flags);
	if (done)
		FUNC15(xfer);
	if (rpipe_ready)
		FUNC16(rpipe);
	return;

error_submit_buf_in:
	if (FUNC5(&wa->dti_edc, EDC_MAX_ERRORS, EDC_ERROR_TIMEFRAME)) {
		FUNC4(dev, "DTI: URB max acceptable errors "
			"exceeded, resetting device\n");
		FUNC13(wa);
	}
	if (FUNC7())
		FUNC4(dev, "xfer %p#%u: can't submit DTI data phase: %d\n",
			xfer, seg_idx, result);
	seg->result = result;
error_complete:
	seg->status = WA_SEG_ERROR;
	xfer->segs_done++;
	rpipe_ready = FUNC8(rpipe);
	FUNC1(xfer);
	done = FUNC2(xfer);
	FUNC10(&xfer->lock, flags);
	if (done)
		FUNC15(xfer);
	if (rpipe_ready)
		FUNC16(rpipe);
	return;

error_bad_seg:
	FUNC10(&xfer->lock, flags);
	FUNC14(wa, xfer->urb);
	if (FUNC7())
		FUNC4(dev, "xfer %p#%u: bad segment\n", xfer, seg_idx);
	if (FUNC5(&wa->dti_edc, EDC_MAX_ERRORS, EDC_ERROR_TIMEFRAME)) {
		FUNC4(dev, "DTI: URB max acceptable errors "
			"exceeded, resetting device\n");
		FUNC13(wa);
	}
	return;

segment_aborted:
	/* nothing to do, as the aborter did the completion */
	FUNC10(&xfer->lock, flags);
}