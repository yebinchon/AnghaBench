
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PORT_CAS ;
 int PORT_PLS_MASK ;
 int USB_PORT_STAT_CONNECTION ;
 int USB_SS_PORT_LS_COMP_MOD ;
 int USB_SS_PORT_LS_SS_INACTIVE ;
 int XDEV_RESUME ;

__attribute__((used)) static void xhci_hub_report_link_state(u32 *status, u32 status_reg)
{
 u32 pls = status_reg & PORT_PLS_MASK;




 if (pls == XDEV_RESUME)
  return;




 if (status_reg & PORT_CAS) {







  if (pls != USB_SS_PORT_LS_COMP_MOD &&
      pls != USB_SS_PORT_LS_SS_INACTIVE) {
   pls = USB_SS_PORT_LS_COMP_MOD;
  }




  pls |= USB_PORT_STAT_CONNECTION;
 } else {
  if (pls == USB_SS_PORT_LS_COMP_MOD)
   pls |= USB_PORT_STAT_CONNECTION;
 }


 *status |= pls;
}
