
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxu_hcd {int hcs_params; } ;


 int ClearPortFeature ;
 unsigned int HCS_N_PORTS (int ) ;
 int HCS_PPC (int ) ;
 int SetPortFeature ;
 int USB_PORT_FEAT_POWER ;
 int msleep (int) ;
 int oxu_dbg (struct oxu_hcd*,char*,char*) ;
 int oxu_hub_control (int ,int ,int ,int ,int *,int ) ;
 int oxu_to_hcd (struct oxu_hcd*) ;

__attribute__((used)) static void ehci_port_power(struct oxu_hcd *oxu, int is_on)
{
 unsigned port;

 if (!HCS_PPC(oxu->hcs_params))
  return;

 oxu_dbg(oxu, "...power%s ports...\n", is_on ? "up" : "down");
 for (port = HCS_N_PORTS(oxu->hcs_params); port > 0; )
  (void) oxu_hub_control(oxu_to_hcd(oxu),
    is_on ? SetPortFeature : ClearPortFeature,
    USB_PORT_FEAT_POWER,
    port--, ((void*)0), 0);
 msleep(20);
}
