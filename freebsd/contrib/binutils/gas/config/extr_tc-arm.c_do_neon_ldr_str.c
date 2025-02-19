
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {scalar_t__ issingle; } ;


 int do_vfp_nsyn_opcode (char*) ;
 TYPE_2__ inst ;

__attribute__((used)) static void
do_neon_ldr_str (void)
{
  int is_ldr = (inst.instruction & (1 << 20)) != 0;

  if (inst.operands[0].issingle)
    {
      if (is_ldr)
        do_vfp_nsyn_opcode ("flds");
      else
        do_vfp_nsyn_opcode ("fsts");
    }
  else
    {
      if (is_ldr)
        do_vfp_nsyn_opcode ("fldd");
      else
        do_vfp_nsyn_opcode ("fstd");
    }
}
