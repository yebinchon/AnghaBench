
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int complete; } ;
typedef TYPE_1__ usbctlx_completor_t ;
struct TYPE_6__ {TYPE_1__ head; int * result; int const* cmdresp; } ;
typedef TYPE_2__ usbctlx_cmd_completor_t ;
typedef int hfa384x_usb_cmdresp_t ;
typedef int hfa384x_cmdresult_t ;


 int usbctlx_cmd_completor_fn ;

__attribute__((used)) static inline usbctlx_completor_t *init_cmd_completor(usbctlx_cmd_completor_t *
            completor,
            const
            hfa384x_usb_cmdresp_t *
            cmdresp,
            hfa384x_cmdresult_t *
            result)
{
 completor->head.complete = usbctlx_cmd_completor_fn;
 completor->cmdresp = cmdresp;
 completor->result = result;
 return &(completor->head);
}
