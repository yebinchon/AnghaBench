
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum neon_shape { ____Placeholder_neon_shape } neon_shape ;
struct TYPE_2__ {int instruction; } ;


 int NS_FFF ;
 int N_MNEM_vadd ;
 int do_vfp_nsyn_opcode (char*) ;
 TYPE_1__ inst ;

__attribute__((used)) static void
do_vfp_nsyn_add_sub (enum neon_shape rs)
{
  int is_add = (inst.instruction & 0x0fffffff) == N_MNEM_vadd;

  if (rs == NS_FFF)
    {
      if (is_add)
        do_vfp_nsyn_opcode ("fadds");
      else
        do_vfp_nsyn_opcode ("fsubs");
    }
  else
    {
      if (is_add)
        do_vfp_nsyn_opcode ("faddd");
      else
        do_vfp_nsyn_opcode ("fsubd");
    }
}
