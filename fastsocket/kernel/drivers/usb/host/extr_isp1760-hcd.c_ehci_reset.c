
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_hcd {scalar_t__ regs; int state; } ;
struct isp1760_hcd {int next_statechange; } ;


 int CMD_RESET ;
 int HC_STATE_HALT ;
 scalar_t__ HC_USBCMD ;
 int handshake (struct isp1760_hcd*,scalar_t__,int ,int ,int) ;
 int isp1760_readl (scalar_t__) ;
 int isp1760_writel (int ,scalar_t__) ;
 int jiffies ;
 struct usb_hcd* priv_to_hcd (struct isp1760_hcd*) ;

__attribute__((used)) static int ehci_reset(struct isp1760_hcd *priv)
{
 int retval;
 struct usb_hcd *hcd = priv_to_hcd(priv);
 u32 command = isp1760_readl(hcd->regs + HC_USBCMD);

 command |= CMD_RESET;
 isp1760_writel(command, hcd->regs + HC_USBCMD);
 hcd->state = HC_STATE_HALT;
 priv->next_statechange = jiffies;
 retval = handshake(priv, hcd->regs + HC_USBCMD,
       CMD_RESET, 0, 250 * 1000);
 return retval;
}
