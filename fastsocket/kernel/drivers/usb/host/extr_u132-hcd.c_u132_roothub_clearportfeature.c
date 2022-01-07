
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct u132_port {int Status; } ;
struct u132 {int num_ports; int hc_control; TYPE_1__* platform_dev; struct u132_port* port; } ;
struct TYPE_4__ {int * portstatus; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 int EPIPE ;
 int OHCI_CTRL_HCFS ;
 int OHCI_USB_OPER ;
 int RH_PS_CCS ;
 int RH_PS_CSC ;
 int RH_PS_LSDA ;
 int RH_PS_OCIC ;
 int RH_PS_PESC ;
 int RH_PS_POCI ;
 int RH_PS_PRSC ;
 int RH_PS_PSSC ;
 int dev_err (int *,char*) ;
 TYPE_2__ roothub ;
 int u132_write_pcimem (struct u132*,int ,int ) ;

__attribute__((used)) static int u132_roothub_clearportfeature(struct u132 *u132, u16 wValue,
 u16 wIndex)
{
 if (wIndex == 0 || wIndex > u132->num_ports) {
  return -EINVAL;
 } else {
  int port_index = wIndex - 1;
  u32 temp;
  int retval;
  struct u132_port *port = &u132->port[port_index];
  port->Status &= ~(1 << wValue);
  switch (wValue) {
  case 130:
   temp = RH_PS_CCS;
   break;
  case 134:
   temp = RH_PS_PESC;
   break;
  case 128:
   temp = RH_PS_POCI;
   if ((u132->hc_control & OHCI_CTRL_HCFS)
    != OHCI_USB_OPER) {
    dev_err(&u132->platform_dev->dev, "TODO resume_"
     "root_hub\n");
   }
   break;
  case 131:
   temp = RH_PS_PSSC;
   break;
  case 129:
   temp = RH_PS_LSDA;
   break;
  case 135:
   temp = RH_PS_CSC;
   break;
  case 133:
   temp = RH_PS_OCIC;
   break;
  case 132:
   temp = RH_PS_PRSC;
   break;
  default:
   return -EPIPE;
  }
  retval = u132_write_pcimem(u132, roothub.portstatus[port_index],
    temp);
  if (retval)
   return retval;
  return 0;
 }
}
