
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct usb_ctrlrequest {int bRequest; int bRequestType; int wValue; scalar_t__ wLength; } ;
struct s3c_hsotg_ep {int dir_in; scalar_t__ sent_zlp; } ;
struct s3c_hsotg {int regs; int dev; int gadget; TYPE_1__* driver; struct s3c_hsotg_ep* eps; } ;
struct TYPE_2__ {int (* setup ) (int *,struct usb_ctrlrequest*) ;} ;


 int S3C_DCFG ;
 int S3C_DCFG_DevAddr_MASK ;
 int S3C_DCFG_DevAddr_SHIFT ;
 int S3C_DIEPCTL0 ;
 int S3C_DOEPCTL0 ;
 int S3C_DxEPCTL_CNAK ;
 int S3C_DxEPCTL_Stall ;
 int USB_DIR_IN ;




 int USB_TYPE_MASK ;
 int USB_TYPE_STANDARD ;
 int dev_dbg (int ,char*,int,...) ;
 int dev_info (int ,char*,int) ;
 int readl (int) ;
 int s3c_hsotg_process_req_feature (struct s3c_hsotg*,struct usb_ctrlrequest*) ;
 int s3c_hsotg_process_req_status (struct s3c_hsotg*,struct usb_ctrlrequest*) ;
 int s3c_hsotg_send_reply (struct s3c_hsotg*,struct s3c_hsotg_ep*,int *,int ) ;
 int stub1 (int *,struct usb_ctrlrequest*) ;
 int writel (int,int) ;

__attribute__((used)) static void s3c_hsotg_process_control(struct s3c_hsotg *hsotg,
          struct usb_ctrlrequest *ctrl)
{
 struct s3c_hsotg_ep *ep0 = &hsotg->eps[0];
 int ret = 0;
 u32 dcfg;

 ep0->sent_zlp = 0;

 dev_dbg(hsotg->dev, "ctrl Req=%02x, Type=%02x, V=%04x, L=%04x\n",
   ctrl->bRequest, ctrl->bRequestType,
   ctrl->wValue, ctrl->wLength);




 ep0->dir_in = (ctrl->bRequestType & USB_DIR_IN) ? 1 : 0;
 dev_dbg(hsotg->dev, "ctrl: dir_in=%d\n", ep0->dir_in);



 if (ctrl->wLength == 0)
  ep0->dir_in = 1;

 if ((ctrl->bRequestType & USB_TYPE_MASK) == USB_TYPE_STANDARD) {
  switch (ctrl->bRequest) {
  case 129:
   dcfg = readl(hsotg->regs + S3C_DCFG);
   dcfg &= ~S3C_DCFG_DevAddr_MASK;
   dcfg |= ctrl->wValue << S3C_DCFG_DevAddr_SHIFT;
   writel(dcfg, hsotg->regs + S3C_DCFG);

   dev_info(hsotg->dev, "new address %d\n", ctrl->wValue);

   ret = s3c_hsotg_send_reply(hsotg, ep0, ((void*)0), 0);
   return;

  case 130:
   ret = s3c_hsotg_process_req_status(hsotg, ctrl);
   break;

  case 131:
  case 128:
   ret = s3c_hsotg_process_req_feature(hsotg, ctrl);
   break;
  }
 }



 if (ret == 0 && hsotg->driver) {
  ret = hsotg->driver->setup(&hsotg->gadget, ctrl);
  if (ret < 0)
   dev_dbg(hsotg->dev, "driver->setup() ret %d\n", ret);
 }

 if (ret > 0) {
  if (!ep0->dir_in) {


   ret = s3c_hsotg_send_reply(hsotg, ep0, ((void*)0), 0);
  }
 }





 if (ret < 0) {
  u32 reg;
  u32 ctrl;

  dev_dbg(hsotg->dev, "ep0 stall (dir=%d)\n", ep0->dir_in);
  reg = (ep0->dir_in) ? S3C_DIEPCTL0 : S3C_DOEPCTL0;




  ctrl = readl(hsotg->regs + reg);
  ctrl |= S3C_DxEPCTL_Stall;
  ctrl |= S3C_DxEPCTL_CNAK;
  writel(ctrl, hsotg->regs + reg);

  dev_dbg(hsotg->dev,
   "writen DxEPCTL=0x%08x to %08x (DxEPCTL=0x%08x)\n",
   ctrl, reg, readl(hsotg->regs + reg));



 }
}
