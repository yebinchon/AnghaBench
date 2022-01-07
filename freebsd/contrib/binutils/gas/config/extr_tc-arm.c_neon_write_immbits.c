
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int instruction; } ;


 TYPE_1__ inst ;

__attribute__((used)) static void
neon_write_immbits (unsigned immbits)
{
  inst.instruction |= immbits & 0xf;
  inst.instruction |= ((immbits >> 4) & 0x7) << 16;
  inst.instruction |= ((immbits >> 7) & 0x1) << 24;
}
