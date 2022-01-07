
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
struct TYPE_4__ {TYPE_1__ reloc; } ;


 int BFD_RELOC_ARM_SWI ;
 TYPE_2__ inst ;

__attribute__((used)) static void
do_t_swi (void)
{
  inst.reloc.type = BFD_RELOC_ARM_SWI;
}
