
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int reloc_howto_type ;


 unsigned int NUM_ELEM (int *) ;
 unsigned int R_ARM_RREL32 ;
 int * elf32_arm_howto_table_1 ;
 int * elf32_arm_howto_table_2 ;

__attribute__((used)) static reloc_howto_type *
elf32_arm_howto_from_type (unsigned int r_type)
{
  if (r_type < NUM_ELEM (elf32_arm_howto_table_1))
    return &elf32_arm_howto_table_1[r_type];

  if (r_type >= R_ARM_RREL32
      && r_type < R_ARM_RREL32 + NUM_ELEM (elf32_arm_howto_table_2))
    return &elf32_arm_howto_table_2[r_type - R_ARM_RREL32];

  return ((void*)0);
}
