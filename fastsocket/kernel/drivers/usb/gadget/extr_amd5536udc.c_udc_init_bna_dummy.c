
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udc_request {TYPE_1__* td_data; int td_phys; } ;
struct TYPE_2__ {int status; int next; } ;


 int AMD_ADDBITS (int ,int ,int ) ;
 int AMD_BIT (int ) ;
 int UDC_DMA_IN_STS_L ;
 int UDC_DMA_STP_STS_BS ;
 int UDC_DMA_STP_STS_BS_DMA_DONE ;
 int pr_debug (char*,TYPE_1__*,int ) ;

__attribute__((used)) static void udc_init_bna_dummy(struct udc_request *req)
{
 if (req) {

  req->td_data->status |= AMD_BIT(UDC_DMA_IN_STS_L);

  req->td_data->next = req->td_phys;

  req->td_data->status
   = AMD_ADDBITS(req->td_data->status,
     UDC_DMA_STP_STS_BS_DMA_DONE,
     UDC_DMA_STP_STS_BS);




 }
}
