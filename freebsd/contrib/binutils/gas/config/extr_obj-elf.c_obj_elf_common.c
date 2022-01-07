
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int elf_common_parse ;
 scalar_t__ flag_mri ;
 int s_comm_internal (int ,int ) ;
 int s_mri_common (int ) ;

void
obj_elf_common (int is_common)
{
  if (flag_mri && is_common)
    s_mri_common (0);
  else
    s_comm_internal (0, elf_common_parse);
}
