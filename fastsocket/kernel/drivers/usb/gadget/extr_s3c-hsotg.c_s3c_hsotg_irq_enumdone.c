
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int speed; } ;
struct s3c_hsotg {scalar_t__ regs; int dev; TYPE_1__ gadget; } ;


 int EP0_MPS_LIMIT ;
 scalar_t__ S3C_DIEPCTL0 ;
 scalar_t__ S3C_DOEPCTL0 ;
 scalar_t__ S3C_DSTS ;




 int S3C_DSTS_EnumSpd_MASK ;
 int S3C_HSOTG_EPS ;
 int USB_SPEED_FULL ;
 int USB_SPEED_HIGH ;
 int USB_SPEED_LOW ;
 int dev_dbg (int ,char*,int,...) ;
 int dev_info (int ,char*) ;
 int readl (scalar_t__) ;
 int s3c_hsotg_enqueue_setup (struct s3c_hsotg*) ;
 int s3c_hsotg_set_ep_maxpacket (struct s3c_hsotg*,int,int) ;

__attribute__((used)) static void s3c_hsotg_irq_enumdone(struct s3c_hsotg *hsotg)
{
 u32 dsts = readl(hsotg->regs + S3C_DSTS);
 int ep0_mps = 0, ep_mps;





 dev_dbg(hsotg->dev, "EnumDone (DSTS=0x%08x)\n", dsts);






 switch (dsts & S3C_DSTS_EnumSpd_MASK) {
 case 131:
 case 130:
  hsotg->gadget.speed = USB_SPEED_FULL;
  dev_info(hsotg->dev, "new device is full-speed\n");

  ep0_mps = EP0_MPS_LIMIT;
  ep_mps = 64;
  break;

 case 129:
  dev_info(hsotg->dev, "new device is high-speed\n");
  hsotg->gadget.speed = USB_SPEED_HIGH;

  ep0_mps = EP0_MPS_LIMIT;
  ep_mps = 512;
  break;

 case 128:
  hsotg->gadget.speed = USB_SPEED_LOW;
  dev_info(hsotg->dev, "new device is low-speed\n");





  break;
 }




 if (ep0_mps) {
  int i;
  s3c_hsotg_set_ep_maxpacket(hsotg, 0, ep0_mps);
  for (i = 1; i < S3C_HSOTG_EPS; i++)
   s3c_hsotg_set_ep_maxpacket(hsotg, i, ep_mps);
 }



 s3c_hsotg_enqueue_setup(hsotg);

 dev_dbg(hsotg->dev, "EP0: DIEPCTL0=0x%08x, DOEPCTL0=0x%08x\n",
  readl(hsotg->regs + S3C_DIEPCTL0),
  readl(hsotg->regs + S3C_DOEPCTL0));
}
