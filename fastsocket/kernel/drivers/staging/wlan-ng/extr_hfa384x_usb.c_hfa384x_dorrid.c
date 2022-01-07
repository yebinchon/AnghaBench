
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int usbctlx_rrid_completor_t ;
typedef int u16 ;
struct TYPE_11__ {int rridresp; } ;
struct TYPE_9__ {void* rid; void* frmlen; void* type; } ;
struct TYPE_10__ {TYPE_1__ rridreq; } ;
struct TYPE_12__ {int outbufsize; TYPE_3__ inbuf; void* usercb_data; int usercb; int cmdcb; scalar_t__ reapable; TYPE_2__ outbuf; } ;
typedef TYPE_4__ hfa384x_usbctlx_t ;
typedef int hfa384x_t ;
typedef int ctlx_usercb_t ;
typedef int ctlx_cmdcb_t ;
typedef scalar_t__ CMD_MODE ;


 scalar_t__ DOWAIT ;
 int ENOMEM ;
 int HFA384x_USB_RRIDREQ ;
 void* cpu_to_le16 (int) ;
 int hfa384x_usbctlx_complete_sync (int *,TYPE_4__*,int ) ;
 int hfa384x_usbctlx_submit (int *,TYPE_4__*) ;
 int init_rrid_completor (int *,int *,void*,unsigned int) ;
 int kfree (TYPE_4__*) ;
 TYPE_4__* usbctlx_alloc () ;

__attribute__((used)) static int
hfa384x_dorrid(hfa384x_t *hw,
        CMD_MODE mode,
        u16 rid,
        void *riddata,
        unsigned int riddatalen,
        ctlx_cmdcb_t cmdcb, ctlx_usercb_t usercb, void *usercb_data)
{
 int result;
 hfa384x_usbctlx_t *ctlx;

 ctlx = usbctlx_alloc();
 if (ctlx == ((void*)0)) {
  result = -ENOMEM;
  goto done;
 }


 ctlx->outbuf.rridreq.type = cpu_to_le16(HFA384x_USB_RRIDREQ);
 ctlx->outbuf.rridreq.frmlen =
     cpu_to_le16(sizeof(ctlx->outbuf.rridreq.rid));
 ctlx->outbuf.rridreq.rid = cpu_to_le16(rid);

 ctlx->outbufsize = sizeof(ctlx->outbuf.rridreq);

 ctlx->reapable = mode;
 ctlx->cmdcb = cmdcb;
 ctlx->usercb = usercb;
 ctlx->usercb_data = usercb_data;


 result = hfa384x_usbctlx_submit(hw, ctlx);
 if (result != 0) {
  kfree(ctlx);
 } else if (mode == DOWAIT) {
  usbctlx_rrid_completor_t completor;

  result =
      hfa384x_usbctlx_complete_sync(hw, ctlx,
        init_rrid_completor
        (&completor,
         &ctlx->inbuf.rridresp,
         riddata, riddatalen));
 }

done:
 return result;
}
