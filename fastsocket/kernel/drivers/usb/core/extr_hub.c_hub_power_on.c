
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct usb_hub {int hdev; TYPE_1__* descriptor; int intfdev; } ;
struct TYPE_2__ {int bPwrOn2PwrGood; int bNbrPorts; int wHubCharacteristics; } ;


 int HUB_CHAR_LPSM ;
 int USB_PORT_FEAT_POWER ;
 int dev_dbg (int ,char*) ;
 int le16_to_cpu (int ) ;
 unsigned int max (unsigned int,unsigned int) ;
 int msleep (unsigned int) ;
 int set_port_feature (int ,int,int ) ;

__attribute__((used)) static unsigned hub_power_on(struct usb_hub *hub, bool do_delay)
{
 int port1;
 unsigned pgood_delay = hub->descriptor->bPwrOn2PwrGood * 2;
 unsigned delay;
 u16 wHubCharacteristics =
   le16_to_cpu(hub->descriptor->wHubCharacteristics);







 if ((wHubCharacteristics & HUB_CHAR_LPSM) < 2)
  dev_dbg(hub->intfdev, "enabling power on all ports\n");
 else
  dev_dbg(hub->intfdev, "trying to enable port power on "
    "non-switchable hub\n");
 for (port1 = 1; port1 <= hub->descriptor->bNbrPorts; port1++)
  set_port_feature(hub->hdev, port1, USB_PORT_FEAT_POWER);


 delay = max(pgood_delay, (unsigned) 100);
 if (do_delay)
  msleep(delay);
 return delay;
}
