
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int usbctlx_cmd_completor_t ;
struct TYPE_13__ {int cmdresp; } ;
struct TYPE_11__ {void* parm2; void* parm1; void* parm0; void* cmd; void* type; } ;
struct TYPE_12__ {TYPE_1__ cmdreq; } ;
struct TYPE_14__ {int outbufsize; TYPE_3__ inbuf; void* usercb_data; int usercb; int cmdcb; scalar_t__ reapable; TYPE_2__ outbuf; } ;
typedef TYPE_4__ hfa384x_usbctlx_t ;
typedef int hfa384x_t ;
struct TYPE_15__ {int result; int parm2; int parm1; int parm0; int cmd; } ;
typedef TYPE_5__ hfa384x_metacmd_t ;
typedef int ctlx_usercb_t ;
typedef int ctlx_cmdcb_t ;
typedef scalar_t__ CMD_MODE ;


 scalar_t__ DOWAIT ;
 int ENOMEM ;
 int HFA384x_USB_CMDREQ ;
 void* cpu_to_le16 (int ) ;
 int hfa384x_usbctlx_complete_sync (int *,TYPE_4__*,int ) ;
 int hfa384x_usbctlx_submit (int *,TYPE_4__*) ;
 int init_cmd_completor (int *,int *,int *) ;
 int kfree (TYPE_4__*) ;
 int pr_debug (char*,int ,int ,int ,int ) ;
 TYPE_4__* usbctlx_alloc () ;

__attribute__((used)) static int
hfa384x_docmd(hfa384x_t *hw,
       CMD_MODE mode,
       hfa384x_metacmd_t *cmd,
       ctlx_cmdcb_t cmdcb, ctlx_usercb_t usercb, void *usercb_data)
{
 int result;
 hfa384x_usbctlx_t *ctlx;

 ctlx = usbctlx_alloc();
 if (ctlx == ((void*)0)) {
  result = -ENOMEM;
  goto done;
 }


 ctlx->outbuf.cmdreq.type = cpu_to_le16(HFA384x_USB_CMDREQ);
 ctlx->outbuf.cmdreq.cmd = cpu_to_le16(cmd->cmd);
 ctlx->outbuf.cmdreq.parm0 = cpu_to_le16(cmd->parm0);
 ctlx->outbuf.cmdreq.parm1 = cpu_to_le16(cmd->parm1);
 ctlx->outbuf.cmdreq.parm2 = cpu_to_le16(cmd->parm2);

 ctlx->outbufsize = sizeof(ctlx->outbuf.cmdreq);

 pr_debug("cmdreq: cmd=0x%04x "
   "parm0=0x%04x parm1=0x%04x parm2=0x%04x\n",
   cmd->cmd, cmd->parm0, cmd->parm1, cmd->parm2);

 ctlx->reapable = mode;
 ctlx->cmdcb = cmdcb;
 ctlx->usercb = usercb;
 ctlx->usercb_data = usercb_data;

 result = hfa384x_usbctlx_submit(hw, ctlx);
 if (result != 0) {
  kfree(ctlx);
 } else if (mode == DOWAIT) {
  usbctlx_cmd_completor_t completor;

  result =
      hfa384x_usbctlx_complete_sync(hw, ctlx,
        init_cmd_completor(&completor,
             &ctlx->
             inbuf.
             cmdresp,
             &cmd->
             result));
 }

done:
 return result;
}
