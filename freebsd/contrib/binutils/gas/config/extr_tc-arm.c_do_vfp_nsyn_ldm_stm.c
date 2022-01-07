
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int instruction; } ;


 int do_vfp_nsyn_opcode (char*) ;
 TYPE_1__ inst ;

__attribute__((used)) static void
do_vfp_nsyn_ldm_stm (int is_dbmode)
{
  int is_ldm = (inst.instruction & (1 << 20)) != 0;
  if (is_ldm)
    {
      if (is_dbmode)
        do_vfp_nsyn_opcode ("fldmdbs");
      else
        do_vfp_nsyn_opcode ("fldmias");
    }
  else
    {
      if (is_dbmode)
        do_vfp_nsyn_opcode ("fstmdbs");
      else
        do_vfp_nsyn_opcode ("fstmias");
    }
}
