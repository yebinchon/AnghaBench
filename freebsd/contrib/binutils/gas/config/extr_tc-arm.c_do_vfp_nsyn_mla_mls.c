
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum neon_shape { ____Placeholder_neon_shape } neon_shape ;
struct TYPE_2__ {int instruction; } ;


 int NS_FFF ;
 int N_MNEM_vmla ;
 int do_vfp_nsyn_opcode (char*) ;
 TYPE_1__ inst ;

__attribute__((used)) static void
do_vfp_nsyn_mla_mls (enum neon_shape rs)
{
  int is_mla = (inst.instruction & 0x0fffffff) == N_MNEM_vmla;

  if (rs == NS_FFF)
    {
      if (is_mla)
        do_vfp_nsyn_opcode ("fmacs");
      else
        do_vfp_nsyn_opcode ("fmscs");
    }
  else
    {
      if (is_mla)
        do_vfp_nsyn_opcode ("fmacd");
      else
        do_vfp_nsyn_opcode ("fmscd");
    }
}
