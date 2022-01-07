
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtpav {int num_ports; } ;


 int MTPAV_PIDX_ADAT ;
 int MTPAV_PIDX_COMPUTER ;

__attribute__((used)) static int translate_subdevice_to_hwport(struct mtpav *chip, int subdev)
{
 if (subdev < 0)
  return 0x01;
 else if (subdev < chip->num_ports)
  return subdev + 1;
 else if (subdev < chip->num_ports * 2)
  return subdev - chip->num_ports + 0x09;
 else if (subdev == chip->num_ports * 2 + MTPAV_PIDX_COMPUTER)
  return 0x11;
 else if (subdev == chip->num_ports + MTPAV_PIDX_ADAT)
  return 0x63;
 return 0;
}
