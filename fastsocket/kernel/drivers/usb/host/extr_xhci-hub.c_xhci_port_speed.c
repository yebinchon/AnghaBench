
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DEV_HIGHSPEED (unsigned int) ;
 scalar_t__ DEV_LOWSPEED (unsigned int) ;
 int USB_PORT_FEAT_HIGHSPEED ;
 int USB_PORT_FEAT_LOWSPEED ;

__attribute__((used)) static unsigned int xhci_port_speed(unsigned int port_status)
{
 if (DEV_LOWSPEED(port_status))
  return 1 << USB_PORT_FEAT_LOWSPEED;
 if (DEV_HIGHSPEED(port_status))
  return 1 << USB_PORT_FEAT_HIGHSPEED;





 return 0;
}
