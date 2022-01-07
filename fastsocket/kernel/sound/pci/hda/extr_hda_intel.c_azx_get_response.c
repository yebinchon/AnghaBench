
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_bus {struct azx* private_data; } ;
struct azx {scalar_t__ single_cmd; scalar_t__ disabled; } ;


 unsigned int azx_rirb_get_response (struct hda_bus*,unsigned int) ;
 unsigned int azx_single_get_response (struct hda_bus*,unsigned int) ;

__attribute__((used)) static unsigned int azx_get_response(struct hda_bus *bus,
         unsigned int addr)
{
 struct azx *chip = bus->private_data;
 if (chip->disabled)
  return 0;
 if (chip->single_cmd)
  return azx_single_get_response(bus, addr);
 else
  return azx_rirb_get_response(bus, addr);
}
