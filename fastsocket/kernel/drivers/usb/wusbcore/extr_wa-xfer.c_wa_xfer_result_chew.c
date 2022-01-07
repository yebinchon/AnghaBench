
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u8 ;
struct wahc {int dti_edc; TYPE_4__* buf_in_urb; struct wa_xfer_result* xfer_result; TYPE_1__* usb_iface; } ;
struct wa_xfer_result {int bTransferSegment; size_t bTransferStatus; int dwTransferLength; } ;
struct wa_xfer {size_t segs; size_t seg_size; int lock; TYPE_3__* urb; int segs_done; scalar_t__ is_dma; scalar_t__ is_inbound; TYPE_2__* ep; struct wa_seg** seg; } ;
struct wa_seg {scalar_t__ status; int result; int index; } ;
struct wa_rpipe {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_8__ {struct wa_seg* context; void* transfer_buffer_length; int transfer_flags; scalar_t__ transfer_buffer; scalar_t__ transfer_dma; int status; } ;
struct TYPE_7__ {scalar_t__ transfer_buffer; scalar_t__ transfer_dma; } ;
struct TYPE_6__ {struct wa_rpipe* hcpriv; } ;
struct TYPE_5__ {struct device dev; } ;


 int BUG_ON (int) ;
 int EDC_ERROR_TIMEFRAME ;
 int EDC_MAX_ERRORS ;
 int EINPROGRESS ;
 int GFP_ATOMIC ;
 int URB_NO_TRANSFER_DMA_MAP ;
 scalar_t__ WA_SEG_ABORTED ;
 scalar_t__ WA_SEG_DONE ;
 scalar_t__ WA_SEG_DTI_PENDING ;
 scalar_t__ WA_SEG_ERROR ;
 scalar_t__ WA_SEG_PENDING ;
 scalar_t__ WA_SEG_SUBMITTED ;
 int __wa_xfer_abort (struct wa_xfer*) ;
 size_t __wa_xfer_is_done (struct wa_xfer*) ;
 int dev_dbg (struct device*,char*,struct wa_xfer*,size_t,size_t,scalar_t__) ;
 int dev_err (struct device*,char*,...) ;
 scalar_t__ edc_inc (int *,int ,int ) ;
 void* le32_to_cpu (int ) ;
 scalar_t__ printk_ratelimit () ;
 unsigned int rpipe_avail_inc (struct wa_rpipe*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int usb_submit_urb (TYPE_4__*,int ) ;
 int wa_reset_all (struct wahc*) ;
 int wa_urb_dequeue (struct wahc*,TYPE_3__*) ;
 int wa_xfer_completion (struct wa_xfer*) ;
 int wa_xfer_delayed_run (struct wa_rpipe*) ;
 int wa_xfer_status_to_errno (size_t) ;

__attribute__((used)) static void wa_xfer_result_chew(struct wahc *wa, struct wa_xfer *xfer)
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

 spin_lock_irqsave(&xfer->lock, flags);
 seg_idx = xfer_result->bTransferSegment & 0x7f;
 if (unlikely(seg_idx >= xfer->segs))
  goto error_bad_seg;
 seg = xfer->seg[seg_idx];
 rpipe = xfer->ep->hcpriv;
 usb_status = xfer_result->bTransferStatus;
 dev_dbg(dev, "xfer %p#%u: bTransferStatus 0x%02x (seg %u)\n",
  xfer, seg_idx, usb_status, seg->status);
 if (seg->status == WA_SEG_ABORTED
     || seg->status == WA_SEG_ERROR)
  goto segment_aborted;
 if (seg->status == WA_SEG_SUBMITTED)
  seg->status = WA_SEG_PENDING;
 if (seg->status != WA_SEG_PENDING) {
  if (printk_ratelimit())
   dev_err(dev, "xfer %p#%u: Bad segment state %u\n",
    xfer, seg_idx, seg->status);
  seg->status = WA_SEG_PENDING;
 }
 if (usb_status & 0x80) {
  seg->result = wa_xfer_status_to_errno(usb_status);
  dev_err(dev, "DTI: xfer %p#%u failed (0x%02x)\n",
   xfer, seg->index, usb_status);
  goto error_complete;
 }

 if (usb_status & 0x40)
  usb_status = 0;
 if (xfer->is_inbound) {
  seg->status = WA_SEG_DTI_PENDING;
  BUG_ON(wa->buf_in_urb->status == -EINPROGRESS);
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
   le32_to_cpu(xfer_result->dwTransferLength);
  wa->buf_in_urb->context = seg;
  result = usb_submit_urb(wa->buf_in_urb, GFP_ATOMIC);
  if (result < 0)
   goto error_submit_buf_in;
 } else {

  seg->status = WA_SEG_DONE;
  seg->result = le32_to_cpu(xfer_result->dwTransferLength);
  xfer->segs_done++;
  rpipe_ready = rpipe_avail_inc(rpipe);
  done = __wa_xfer_is_done(xfer);
 }
 spin_unlock_irqrestore(&xfer->lock, flags);
 if (done)
  wa_xfer_completion(xfer);
 if (rpipe_ready)
  wa_xfer_delayed_run(rpipe);
 return;

error_submit_buf_in:
 if (edc_inc(&wa->dti_edc, EDC_MAX_ERRORS, EDC_ERROR_TIMEFRAME)) {
  dev_err(dev, "DTI: URB max acceptable errors "
   "exceeded, resetting device\n");
  wa_reset_all(wa);
 }
 if (printk_ratelimit())
  dev_err(dev, "xfer %p#%u: can't submit DTI data phase: %d\n",
   xfer, seg_idx, result);
 seg->result = result;
error_complete:
 seg->status = WA_SEG_ERROR;
 xfer->segs_done++;
 rpipe_ready = rpipe_avail_inc(rpipe);
 __wa_xfer_abort(xfer);
 done = __wa_xfer_is_done(xfer);
 spin_unlock_irqrestore(&xfer->lock, flags);
 if (done)
  wa_xfer_completion(xfer);
 if (rpipe_ready)
  wa_xfer_delayed_run(rpipe);
 return;

error_bad_seg:
 spin_unlock_irqrestore(&xfer->lock, flags);
 wa_urb_dequeue(wa, xfer->urb);
 if (printk_ratelimit())
  dev_err(dev, "xfer %p#%u: bad segment\n", xfer, seg_idx);
 if (edc_inc(&wa->dti_edc, EDC_MAX_ERRORS, EDC_ERROR_TIMEFRAME)) {
  dev_err(dev, "DTI: URB max acceptable errors "
   "exceeded, resetting device\n");
  wa_reset_all(wa);
 }
 return;

segment_aborted:

 spin_unlock_irqrestore(&xfer->lock, flags);
}
