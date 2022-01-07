
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_target ;
typedef int bfd_boolean ;



bfd_boolean
_bfd_elf_default_relocs_compatible (const bfd_target *input,
        const bfd_target *output)
{
  return input == output;
}
