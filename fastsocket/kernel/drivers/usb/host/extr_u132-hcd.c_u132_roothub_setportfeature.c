
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct u132_port {int Status; } ;
struct u132 {int num_ports; struct u132_port* port; } ;
struct TYPE_2__ {int * portstatus; } ;


 int EINVAL ;
 int EPIPE ;
 int RH_PS_PPS ;
 int RH_PS_PSS ;



 TYPE_1__ roothub ;
 int u132_roothub_portreset (struct u132*,int) ;
 int u132_write_pcimem (struct u132*,int ,int ) ;

__attribute__((used)) static int u132_roothub_setportfeature(struct u132 *u132, u16 wValue,
 u16 wIndex)
{
 if (wIndex == 0 || wIndex > u132->num_ports) {
  return -EINVAL;
 } else {
  int retval;
  int port_index = wIndex - 1;
  struct u132_port *port = &u132->port[port_index];
  port->Status &= ~(1 << wValue);
  switch (wValue) {
  case 128:
   retval = u132_write_pcimem(u132,
    roothub.portstatus[port_index], RH_PS_PSS);
   if (retval)
    return retval;
   return 0;
  case 130:
   retval = u132_write_pcimem(u132,
    roothub.portstatus[port_index], RH_PS_PPS);
   if (retval)
    return retval;
   return 0;
  case 129:
   retval = u132_roothub_portreset(u132, port_index);
   if (retval)
    return retval;
   return 0;
  default:
   return -EPIPE;
  }
 }
}
