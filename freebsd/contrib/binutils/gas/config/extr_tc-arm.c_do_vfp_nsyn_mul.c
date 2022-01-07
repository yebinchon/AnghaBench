
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum neon_shape { ____Placeholder_neon_shape } neon_shape ;


 int NS_FFF ;
 int do_vfp_nsyn_opcode (char*) ;

__attribute__((used)) static void
do_vfp_nsyn_mul (enum neon_shape rs)
{
  if (rs == NS_FFF)
    do_vfp_nsyn_opcode ("fmuls");
  else
    do_vfp_nsyn_opcode ("fmuld");
}
