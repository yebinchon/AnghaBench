
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int status; int length; unsigned int dma; scalar_t__ zero; int buf; } ;
struct ci13xxx_req {int map; TYPE_2__ req; int dma; TYPE_5__* ptr; } ;
struct ci13xxx_ep {int dir; scalar_t__ type; int num; TYPE_4__* qh; int device; } ;
struct TYPE_10__ {int token; unsigned int* page; int next; } ;
struct TYPE_9__ {TYPE_3__* ptr; } ;
struct TYPE_6__ {int token; int next; } ;
struct TYPE_8__ {int cap; TYPE_1__ td; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int EALREADY ;
 int EBUSY ;
 int ENOMEM ;
 unsigned int PAGE_SIZE ;
 int QH_ZLT ;
 int TD_IOC ;
 unsigned int TD_RESERVED_MASK ;
 int TD_STATUS ;
 int TD_STATUS_ACTIVE ;
 int TD_TERMINATE ;
 int TD_TOTAL_BYTES ;
 scalar_t__ USB_ENDPOINT_XFER_CONTROL ;
 unsigned int dma_map_single (int ,int ,int,int ) ;
 int ffs_nr (int) ;
 scalar_t__ hw_ep_is_primed (int ,int) ;
 int hw_ep_prime (int ,size_t,int) ;
 int memset (TYPE_5__*,int ,int) ;
 int trace (char*,struct ci13xxx_ep*,struct ci13xxx_req*) ;
 int wmb () ;

__attribute__((used)) static int _hardware_enqueue(struct ci13xxx_ep *mEp, struct ci13xxx_req *mReq)
{
 unsigned i;

 trace("%p, %p", mEp, mReq);


 if (mReq->req.status == -EALREADY)
  return -EALREADY;

 if (hw_ep_is_primed(mEp->num, mEp->dir))
  return -EBUSY;

 mReq->req.status = -EALREADY;

 if (mReq->req.length && !mReq->req.dma) {
  mReq->req.dma = dma_map_single(mEp->device, mReq->req.buf,

           mReq->req.length, mEp->dir ?
           DMA_TO_DEVICE : DMA_FROM_DEVICE);
  if (mReq->req.dma == 0)
   return -ENOMEM;

  mReq->map = 1;
 }





 memset(mReq->ptr, 0, sizeof(*mReq->ptr));
 mReq->ptr->next |= TD_TERMINATE;
 mReq->ptr->token = mReq->req.length << ffs_nr(TD_TOTAL_BYTES);
 mReq->ptr->token &= TD_TOTAL_BYTES;
 mReq->ptr->token |= TD_IOC;
 mReq->ptr->token |= TD_STATUS_ACTIVE;
 mReq->ptr->page[0] = mReq->req.dma;
 for (i = 1; i < 5; i++)
  mReq->ptr->page[i] =
   (mReq->req.dma + i * PAGE_SIZE) & ~TD_RESERVED_MASK;






 mEp->qh[mEp->dir].ptr->td.next = mReq->dma;
 mEp->qh[mEp->dir].ptr->td.token &= ~TD_STATUS;
 if (mReq->req.zero == 0)
  mEp->qh[mEp->dir].ptr->cap |= QH_ZLT;
 else
  mEp->qh[mEp->dir].ptr->cap &= ~QH_ZLT;

 wmb();

 return hw_ep_prime(mEp->num, mEp->dir,
      mEp->type == USB_ENDPOINT_XFER_CONTROL);
}
