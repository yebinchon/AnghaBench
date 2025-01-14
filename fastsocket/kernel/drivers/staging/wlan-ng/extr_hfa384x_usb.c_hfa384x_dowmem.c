
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int usbctlx_wmem_completor_t ;
typedef int u16 ;
struct TYPE_11__ {int wmemresp; } ;
struct TYPE_9__ {int data; void* page; void* offset; void* frmlen; void* type; } ;
struct TYPE_10__ {TYPE_1__ wmemreq; } ;
struct TYPE_12__ {int outbufsize; TYPE_3__ inbuf; void* usercb_data; int usercb; int cmdcb; scalar_t__ reapable; TYPE_2__ outbuf; } ;
typedef TYPE_4__ hfa384x_usbctlx_t ;
typedef int hfa384x_t ;
typedef int hfa384x_cmdresult_t ;
typedef int ctlx_usercb_t ;
typedef int ctlx_cmdcb_t ;
typedef scalar_t__ CMD_MODE ;


 scalar_t__ DOWAIT ;
 int ENOMEM ;
 int HFA384x_USB_WMEMREQ ;
 void* cpu_to_le16 (int) ;
 int hfa384x_usbctlx_complete_sync (int *,TYPE_4__*,int ) ;
 int hfa384x_usbctlx_submit (int *,TYPE_4__*) ;
 int init_wmem_completor (int *,int *,int *) ;
 int kfree (TYPE_4__*) ;
 int memcpy (int ,void*,unsigned int) ;
 int pr_debug (char*,int,int,unsigned int) ;
 TYPE_4__* usbctlx_alloc () ;

__attribute__((used)) static int
hfa384x_dowmem(hfa384x_t *hw,
        CMD_MODE mode,
        u16 page,
        u16 offset,
        void *data,
        unsigned int len,
        ctlx_cmdcb_t cmdcb, ctlx_usercb_t usercb, void *usercb_data)
{
 int result;
 hfa384x_usbctlx_t *ctlx;

 pr_debug("page=0x%04x offset=0x%04x len=%d\n", page, offset, len);

 ctlx = usbctlx_alloc();
 if (ctlx == ((void*)0)) {
  result = -ENOMEM;
  goto done;
 }


 ctlx->outbuf.wmemreq.type = cpu_to_le16(HFA384x_USB_WMEMREQ);
 ctlx->outbuf.wmemreq.frmlen =
     cpu_to_le16(sizeof(ctlx->outbuf.wmemreq.offset) +
   sizeof(ctlx->outbuf.wmemreq.page) + len);
 ctlx->outbuf.wmemreq.offset = cpu_to_le16(offset);
 ctlx->outbuf.wmemreq.page = cpu_to_le16(page);
 memcpy(ctlx->outbuf.wmemreq.data, data, len);

 ctlx->outbufsize = sizeof(ctlx->outbuf.wmemreq.type) +
     sizeof(ctlx->outbuf.wmemreq.frmlen) +
     sizeof(ctlx->outbuf.wmemreq.offset) +
     sizeof(ctlx->outbuf.wmemreq.page) + len;

 ctlx->reapable = mode;
 ctlx->cmdcb = cmdcb;
 ctlx->usercb = usercb;
 ctlx->usercb_data = usercb_data;

 result = hfa384x_usbctlx_submit(hw, ctlx);
 if (result != 0) {
  kfree(ctlx);
 } else if (mode == DOWAIT) {
  usbctlx_wmem_completor_t completor;
  hfa384x_cmdresult_t wmemresult;

  result = hfa384x_usbctlx_complete_sync(hw,
             ctlx,
             init_wmem_completor
             (&completor,
       &ctlx->inbuf.wmemresp,
       &wmemresult));
 }

done:
 return result;
}
