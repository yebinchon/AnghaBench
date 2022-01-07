
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_5__ {int* DeviceRemovable; } ;
struct TYPE_6__ {TYPE_1__ hs; } ;
struct usb_hub_descriptor {int bDescLength; int bDescriptorType; int bNbrPorts; int bPwrOn2PwrGood; TYPE_2__ u; int bHubContrCurrent; int wHubCharacteristics; } ;
struct TYPE_8__ {int is_b_host; } ;
struct usb_hcd {TYPE_4__ self; } ;
struct musb {int port1_status; int is_active; int lock; int mregs; TYPE_3__* xceiv; int rh_timer; } ;
typedef int __le32 ;
struct TYPE_7__ {int state; } ;






 int DBG (int,char*,int) ;
 int EPIPE ;
 int ESHUTDOWN ;



 int HCD_HW_ACCESSIBLE (struct usb_hcd*) ;
 int MUSB_DEVCTL ;
 int MUSB_DEVCTL_SESSION ;
 int MUSB_PORT_STAT_RESUME ;
 int MUSB_POWER ;
 int MUSB_POWER_RESUME ;
 int MUSB_TESTMODE ;
 int MUSB_TEST_FIFO_ACCESS ;
 int MUSB_TEST_FORCE_HOST ;
 int MUSB_TEST_FORCE_HS ;
 int MUSB_TEST_J ;
 int MUSB_TEST_K ;
 int MUSB_TEST_PACKET ;
 int MUSB_TEST_SE0_NAK ;
 int OTG_STATE_A_HOST ;
 int USB_PORT_STAT_C_SUSPEND ;
 int USB_PORT_STAT_RESET ;
 int USB_PORT_STAT_SUSPEND ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int) ;
 int get_unaligned (int*) ;
 struct musb* hcd_to_musb (struct usb_hcd*) ;
 int is_host_active (struct musb*) ;
 int is_otg_enabled (struct musb*) ;
 int jiffies ;
 int musb_load_testpacket (struct musb*) ;
 int musb_port_reset (struct musb*,int) ;
 int musb_port_suspend (struct musb*,int) ;
 int musb_readb (int ,int ) ;
 int musb_set_vbus (struct musb*,int ) ;
 int musb_start (struct musb*) ;
 int musb_to_hcd (struct musb*) ;
 int musb_writeb (int ,int ,int) ;
 int pr_debug (char*) ;
 int put_unaligned (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int time_after_eq (int ,int ) ;
 scalar_t__ unlikely (int) ;
 int usb_hcd_poll_rh_status (int ) ;

int musb_hub_control(
 struct usb_hcd *hcd,
 u16 typeReq,
 u16 wValue,
 u16 wIndex,
 char *buf,
 u16 wLength)
{
 struct musb *musb = hcd_to_musb(hcd);
 u32 temp;
 int retval = 0;
 unsigned long flags;

 spin_lock_irqsave(&musb->lock, flags);

 if (unlikely(!HCD_HW_ACCESSIBLE(hcd))) {
  spin_unlock_irqrestore(&musb->lock, flags);
  return -ESHUTDOWN;
 }





 switch (typeReq) {
 case 144:
 case 139:
  switch (wValue) {
  case 145:
  case 146:
   break;
  default:
   goto error;
  }
  break;
 case 143:
  if ((wIndex & 0xff) != 1)
   goto error;

  switch (wValue) {
  case 132:
   break;
  case 129:
   musb_port_suspend(musb, 0);
   break;
  case 131:
   if (!(is_otg_enabled(musb) && hcd->self.is_b_host))
    musb_set_vbus(musb, 0);
   break;
  case 137:
  case 136:
  case 135:
  case 134:
  case 133:
   break;
  default:
   goto error;
  }
  DBG(5, "clear feature %d\n", wValue);
  musb->port1_status &= ~(1 << wValue);
  break;
 case 142:
  {
  struct usb_hub_descriptor *desc = (void *)buf;

  desc->bDescLength = 9;
  desc->bDescriptorType = 0x29;
  desc->bNbrPorts = 1;
  desc->wHubCharacteristics = cpu_to_le16(
      0x0001
    | 0x0010
    );
  desc->bPwrOn2PwrGood = 5;
  desc->bHubContrCurrent = 0;


  desc->u.hs.DeviceRemovable[0] = 0x02;
  desc->u.hs.DeviceRemovable[1] = 0xff;
  }
  break;
 case 141:
  temp = 0;
  *(__le32 *) buf = cpu_to_le32(temp);
  break;
 case 140:
  if (wIndex != 1)
   goto error;


  if ((musb->port1_status & USB_PORT_STAT_RESET)
    && time_after_eq(jiffies, musb->rh_timer))
   musb_port_reset(musb, 0);


  if ((musb->port1_status & MUSB_PORT_STAT_RESUME)
    && time_after_eq(jiffies, musb->rh_timer)) {
   u8 power;

   power = musb_readb(musb->mregs, MUSB_POWER);
   power &= ~MUSB_POWER_RESUME;
   DBG(4, "root port resume stopped, power %02x\n",
     power);
   musb_writeb(musb->mregs, MUSB_POWER, power);






   musb->is_active = 1;
   musb->port1_status &= ~(USB_PORT_STAT_SUSPEND
     | MUSB_PORT_STAT_RESUME);
   musb->port1_status |= USB_PORT_STAT_C_SUSPEND << 16;
   usb_hcd_poll_rh_status(musb_to_hcd(musb));

   musb->xceiv->state = OTG_STATE_A_HOST;
  }

  put_unaligned(cpu_to_le32(musb->port1_status
     & ~MUSB_PORT_STAT_RESUME),
    (__le32 *) buf);


  DBG(get_unaligned((u16 *)(buf+2)) ? 2 : 5, "port status %08x\n",
    musb->port1_status);
  break;
 case 138:
  if ((wIndex & 0xff) != 1)
   goto error;

  switch (wValue) {
  case 131:
   if (!(is_otg_enabled(musb) && hcd->self.is_b_host))
    musb_start(musb);
   break;
  case 130:
   musb_port_reset(musb, 1);
   break;
  case 129:
   musb_port_suspend(musb, 1);
   break;
  case 128:
   if (unlikely(is_host_active(musb)))
    goto error;

   wIndex >>= 8;
   switch (wIndex) {
   case 1:
    pr_debug("TEST_J\n");
    temp = MUSB_TEST_J;
    break;
   case 2:
    pr_debug("TEST_K\n");
    temp = MUSB_TEST_K;
    break;
   case 3:
    pr_debug("TEST_SE0_NAK\n");
    temp = MUSB_TEST_SE0_NAK;
    break;
   case 4:
    pr_debug("TEST_PACKET\n");
    temp = MUSB_TEST_PACKET;
    musb_load_testpacket(musb);
    break;
   case 5:
    pr_debug("TEST_FORCE_ENABLE\n");
    temp = MUSB_TEST_FORCE_HOST
     | MUSB_TEST_FORCE_HS;

    musb_writeb(musb->mregs, MUSB_DEVCTL,
      MUSB_DEVCTL_SESSION);
    break;
   case 6:
    pr_debug("TEST_FIFO_ACCESS\n");
    temp = MUSB_TEST_FIFO_ACCESS;
    break;
   default:
    goto error;
   }
   musb_writeb(musb->mregs, MUSB_TESTMODE, temp);
   break;
  default:
   goto error;
  }
  DBG(5, "set feature %d\n", wValue);
  musb->port1_status |= 1 << wValue;
  break;

 default:
error:

  retval = -EPIPE;
 }
 spin_unlock_irqrestore(&musb->lock, flags);
 return retval;
}
