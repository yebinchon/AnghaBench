
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int XHCI_PORT_RO ;
 int XHCI_PORT_RWS ;

u32 xhci_port_state_to_neutral(u32 state)
{

 return (state & XHCI_PORT_RO) | (state & XHCI_PORT_RWS);
}
