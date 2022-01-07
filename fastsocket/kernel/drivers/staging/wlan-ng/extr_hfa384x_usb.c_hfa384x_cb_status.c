
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int cmdresp; } ;
struct TYPE_9__ {scalar_t__ state; int usercb_data; int (* usercb ) (int *,TYPE_3__*,int ) ;TYPE_1__ inbuf; } ;
typedef TYPE_2__ hfa384x_usbctlx_t ;
typedef int hfa384x_t ;
struct TYPE_10__ {int status; } ;
typedef TYPE_3__ hfa384x_cmdresult_t ;
typedef int cmdresult ;


 scalar_t__ CTLX_COMPLETE ;
 int HFA384x_CMD_ERR ;
 int HFA384x_STATUS_RESULT_SET (int ) ;
 int memset (TYPE_3__*,int ,int) ;
 int stub1 (int *,TYPE_3__*,int ) ;
 int usbctlx_get_status (int *,TYPE_3__*) ;

__attribute__((used)) static void hfa384x_cb_status(hfa384x_t *hw, const hfa384x_usbctlx_t *ctlx)
{
 if (ctlx->usercb != ((void*)0)) {
  hfa384x_cmdresult_t cmdresult;

  if (ctlx->state != CTLX_COMPLETE) {
   memset(&cmdresult, 0, sizeof(cmdresult));
   cmdresult.status =
       HFA384x_STATUS_RESULT_SET(HFA384x_CMD_ERR);
  } else {
   usbctlx_get_status(&ctlx->inbuf.cmdresp, &cmdresult);
  }

  ctlx->usercb(hw, &cmdresult, ctlx->usercb_data);
 }
}
