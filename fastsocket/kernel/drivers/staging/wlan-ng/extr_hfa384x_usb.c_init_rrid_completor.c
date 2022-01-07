
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int complete; } ;
struct TYPE_5__ {unsigned int riddatalen; TYPE_2__ head; void* riddata; int const* rridresp; } ;
typedef TYPE_1__ usbctlx_rrid_completor_t ;
typedef TYPE_2__ usbctlx_completor_t ;
typedef int hfa384x_usb_rridresp_t ;


 int usbctlx_rrid_completor_fn ;

__attribute__((used)) static inline usbctlx_completor_t *init_rrid_completor(usbctlx_rrid_completor_t
             *completor,
             const
             hfa384x_usb_rridresp_t *
             rridresp, void *riddata,
             unsigned int riddatalen)
{
 completor->head.complete = usbctlx_rrid_completor_fn;
 completor->rridresp = rridresp;
 completor->riddata = riddata;
 completor->riddatalen = riddatalen;
 return &(completor->head);
}
