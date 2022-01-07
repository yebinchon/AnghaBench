
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int complete; } ;
struct TYPE_5__ {unsigned int len; TYPE_2__ head; void* data; int * rmemresp; } ;
typedef TYPE_1__ usbctlx_rmem_completor_t ;
typedef TYPE_2__ usbctlx_completor_t ;
typedef int hfa384x_usb_rmemresp_t ;


 int usbctlx_rmem_completor_fn ;

__attribute__((used)) static inline usbctlx_completor_t *init_rmem_completor(usbctlx_rmem_completor_t
             *completor,
             hfa384x_usb_rmemresp_t
             *rmemresp, void *data,
             unsigned int len)
{
 completor->head.complete = usbctlx_rmem_completor_fn;
 completor->rmemresp = rmemresp;
 completor->data = data;
 completor->len = len;
 return &(completor->head);
}
