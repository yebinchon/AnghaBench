
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {scalar_t__ length; scalar_t__ actual; scalar_t__ dma; int no_interrupt; scalar_t__ zero; } ;
struct fsl_req {TYPE_3__ req; TYPE_2__* ep; } ;
struct ep_td_struct {int size_ioc_sts; void* buff_ptr4; void* buff_ptr3; void* buff_ptr2; void* buff_ptr1; void* buff_ptr0; scalar_t__ td_dma; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_8__ {int td_pool; } ;
struct TYPE_5__ {unsigned int maxpacket; } ;
struct TYPE_6__ {TYPE_1__ ep; } ;


 int DTD_IOC ;
 unsigned int DTD_LENGTH_BIT_POS ;
 int DTD_RESERVED_FIELDS ;
 unsigned int DTD_STATUS_ACTIVE ;
 scalar_t__ EP_MAX_LENGTH_TRANSFER ;
 int GFP_KERNEL ;
 int VDBG (char*,...) ;
 void* cpu_to_le32 (int) ;
 struct ep_td_struct* dma_pool_alloc (int ,int ,scalar_t__*) ;
 int mb () ;
 unsigned int min (scalar_t__,unsigned int) ;
 TYPE_4__* udc_controller ;

__attribute__((used)) static struct ep_td_struct *fsl_build_dtd(struct fsl_req *req, unsigned *length,
  dma_addr_t *dma, int *is_last)
{
 u32 swap_temp;
 struct ep_td_struct *dtd;


 *length = min(req->req.length - req->req.actual,
   (unsigned)EP_MAX_LENGTH_TRANSFER);

 dtd = dma_pool_alloc(udc_controller->td_pool, GFP_KERNEL, dma);
 if (dtd == ((void*)0))
  return dtd;

 dtd->td_dma = *dma;

 swap_temp = cpu_to_le32(dtd->size_ioc_sts);
 swap_temp &= ~DTD_RESERVED_FIELDS;
 dtd->size_ioc_sts = cpu_to_le32(swap_temp);


 swap_temp = (u32) (req->req.dma + req->req.actual);
 dtd->buff_ptr0 = cpu_to_le32(swap_temp);
 dtd->buff_ptr1 = cpu_to_le32(swap_temp + 0x1000);
 dtd->buff_ptr2 = cpu_to_le32(swap_temp + 0x2000);
 dtd->buff_ptr3 = cpu_to_le32(swap_temp + 0x3000);
 dtd->buff_ptr4 = cpu_to_le32(swap_temp + 0x4000);

 req->req.actual += *length;


 if (req->req.zero) {
  if (*length == 0 || (*length % req->ep->ep.maxpacket) != 0)
   *is_last = 1;
  else
   *is_last = 0;
 } else if (req->req.length == req->req.actual)
  *is_last = 1;
 else
  *is_last = 0;

 if ((*is_last) == 0)
  VDBG("multi-dtd request!");

 swap_temp = ((*length << DTD_LENGTH_BIT_POS) | DTD_STATUS_ACTIVE);


 if (*is_last && !req->req.no_interrupt)
  swap_temp |= DTD_IOC;

 dtd->size_ioc_sts = cpu_to_le32(swap_temp);

 mb();

 VDBG("length = %d address= 0x%x", *length, (int)*dma);

 return dtd;
}
