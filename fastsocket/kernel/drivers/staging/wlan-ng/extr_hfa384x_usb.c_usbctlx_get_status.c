
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int resp2; int resp1; int resp0; int status; } ;
typedef TYPE_1__ hfa384x_usb_cmdresp_t ;
struct TYPE_6__ {int status; void* resp2; void* resp1; void* resp0; } ;
typedef TYPE_2__ hfa384x_cmdresult_t ;


 int HFA384x_STATUS_RESULT ;
 void* le16_to_cpu (int ) ;
 int pr_debug (char*,int,void*,void*,void*) ;

__attribute__((used)) static int
usbctlx_get_status(const hfa384x_usb_cmdresp_t *cmdresp,
     hfa384x_cmdresult_t *result)
{
 result->status = le16_to_cpu(cmdresp->status);
 result->resp0 = le16_to_cpu(cmdresp->resp0);
 result->resp1 = le16_to_cpu(cmdresp->resp1);
 result->resp2 = le16_to_cpu(cmdresp->resp2);

 pr_debug("cmdresult:status=0x%04x "
   "resp0=0x%04x resp1=0x%04x resp2=0x%04x\n",
   result->status, result->resp0, result->resp1, result->resp2);

 return result->status & HFA384x_STATUS_RESULT;
}
