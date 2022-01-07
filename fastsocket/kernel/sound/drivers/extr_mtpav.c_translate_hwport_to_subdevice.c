
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtpav {int num_ports; } ;


 int MTPAV_PIDX_ADAT ;
 int MTPAV_PIDX_BROADCAST ;
 int MTPAV_PIDX_COMPUTER ;

__attribute__((used)) static int translate_hwport_to_subdevice(struct mtpav *chip, int hwport)
{
 int p;
 if (hwport <= 0x00)
  return chip->num_ports + MTPAV_PIDX_BROADCAST;
 else if (hwport <= 0x08) {
  p = hwport - 1;
  if (p >= chip->num_ports)
   p = 0;
  return p;
 } else if (hwport <= 0x10) {
  p = hwport - 0x09 + chip->num_ports;
  if (p >= chip->num_ports * 2)
   p = chip->num_ports;
  return p;
 } else if (hwport == 0x11)
  return chip->num_ports + MTPAV_PIDX_COMPUTER;
 else
  return chip->num_ports + MTPAV_PIDX_ADAT;
}
