
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usbctlx_completor_t ;
struct TYPE_2__ {int result; int cmdresp; } ;
typedef TYPE_1__ usbctlx_cmd_completor_t ;


 int usbctlx_get_status (int ,int ) ;

__attribute__((used)) static int usbctlx_cmd_completor_fn(usbctlx_completor_t * head)
{
 usbctlx_cmd_completor_t *complete = (usbctlx_cmd_completor_t *) head;
 return usbctlx_get_status(complete->cmdresp, complete->result);
}
