
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int len; TYPE_1__* rmemresp; int data; } ;
typedef TYPE_2__ usbctlx_rmem_completor_t ;
typedef int usbctlx_completor_t ;
struct TYPE_3__ {int data; int frmlen; } ;


 int memcpy (int ,int ,int ) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static int usbctlx_rmem_completor_fn(usbctlx_completor_t *head)
{
 usbctlx_rmem_completor_t *complete = (usbctlx_rmem_completor_t *) head;

 pr_debug("rmemresp:len=%d\n", complete->rmemresp->frmlen);
 memcpy(complete->data, complete->rmemresp->data, complete->len);
 return 0;
}
