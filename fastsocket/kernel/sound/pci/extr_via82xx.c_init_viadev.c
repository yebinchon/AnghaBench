
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct via82xx {scalar_t__ port; TYPE_1__* devs; } ;
struct TYPE_2__ {unsigned int reg_offset; int shadow_shift; int direction; scalar_t__ port; } ;



__attribute__((used)) static void init_viadev(struct via82xx *chip, int idx, unsigned int reg_offset,
   int shadow_pos, int direction)
{
 chip->devs[idx].reg_offset = reg_offset;
 chip->devs[idx].shadow_shift = shadow_pos * 4;
 chip->devs[idx].direction = direction;
 chip->devs[idx].port = chip->port + reg_offset;
}
