
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ehci_hcd {TYPE_1__* regs; } ;
typedef enum fsl_usb2_phy_modes { ____Placeholder_fsl_usb2_phy_modes } fsl_usb2_phy_modes ;
struct TYPE_2__ {int * port_status; } ;







 int PORT_PTS_PTW ;
 int PORT_PTS_SERIAL ;
 int PORT_PTS_ULPI ;
 int PORT_PTS_UTMI ;
 int ehci_writel (struct ehci_hcd*,int ,int *) ;

__attribute__((used)) static void mpc83xx_setup_phy(struct ehci_hcd *ehci,
         enum fsl_usb2_phy_modes phy_mode,
         unsigned int port_offset)
{
 u32 portsc = 0;
 switch (phy_mode) {
 case 130:
  portsc |= PORT_PTS_ULPI;
  break;
 case 131:
  portsc |= PORT_PTS_SERIAL;
  break;
 case 128:
  portsc |= PORT_PTS_PTW;

 case 129:
  portsc |= PORT_PTS_UTMI;
  break;
 case 132:
  break;
 }
 ehci_writel(ehci, portsc, &ehci->regs->port_status[port_offset]);
}
