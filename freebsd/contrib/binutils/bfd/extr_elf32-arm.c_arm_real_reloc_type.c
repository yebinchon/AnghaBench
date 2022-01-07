
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf32_arm_link_hash_table {int target2_reloc; int target1_is_rel; } ;


 int R_ARM_ABS32 ;
 int R_ARM_REL32 ;



__attribute__((used)) static int
arm_real_reloc_type (struct elf32_arm_link_hash_table * globals,
       int r_type)
{
  switch (r_type)
    {
    case 129:
      if (globals->target1_is_rel)
 return R_ARM_REL32;
      else
 return R_ARM_ABS32;

    case 128:
      return globals->target2_reloc;

    default:
      return r_type;
    }
}
