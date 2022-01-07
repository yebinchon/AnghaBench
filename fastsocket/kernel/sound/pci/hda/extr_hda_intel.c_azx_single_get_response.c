
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_bus {struct azx* private_data; } ;
struct TYPE_2__ {unsigned int* res; } ;
struct azx {TYPE_1__ rirb; } ;



__attribute__((used)) static unsigned int azx_single_get_response(struct hda_bus *bus,
         unsigned int addr)
{
 struct azx *chip = bus->private_data;
 return chip->rirb.res[addr];
}
