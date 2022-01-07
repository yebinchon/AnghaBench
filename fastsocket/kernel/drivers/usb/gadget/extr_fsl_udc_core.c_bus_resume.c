
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsl_udc {int gadget; TYPE_1__* driver; scalar_t__ resume_state; scalar_t__ usb_state; } ;
struct TYPE_2__ {int (* resume ) (int *) ;} ;


 int stub1 (int *) ;

__attribute__((used)) static void bus_resume(struct fsl_udc *udc)
{
 udc->usb_state = udc->resume_state;
 udc->resume_state = 0;


 if (udc->driver->resume)
  udc->driver->resume(&udc->gadget);
}
