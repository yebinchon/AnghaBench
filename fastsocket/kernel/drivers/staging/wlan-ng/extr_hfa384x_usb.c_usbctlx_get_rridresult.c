
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int frmlen; int data; int rid; } ;
typedef TYPE_1__ hfa384x_usb_rridresp_t ;
struct TYPE_6__ {int rid; int riddata_len; int riddata; } ;
typedef TYPE_2__ hfa384x_rridresult_t ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static void
usbctlx_get_rridresult(const hfa384x_usb_rridresp_t *rridresp,
         hfa384x_rridresult_t *result)
{
 result->rid = le16_to_cpu(rridresp->rid);
 result->riddata = rridresp->data;
 result->riddata_len = ((le16_to_cpu(rridresp->frmlen) - 1) * 2);

}
