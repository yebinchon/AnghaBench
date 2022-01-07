
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf_backend_data {scalar_t__ arch; scalar_t__ relocs_compatible; } ;
typedef int bfd_target ;
typedef int bfd_boolean ;


 int FALSE ;
 int TRUE ;
 struct elf_backend_data* xvec_get_elf_backend_data (int const*) ;

bfd_boolean
_bfd_elf_relocs_compatible (const bfd_target *input,
       const bfd_target *output)
{
  const struct elf_backend_data *obed, *ibed;

  if (input == output)
    return TRUE;

  ibed = xvec_get_elf_backend_data (input);
  obed = xvec_get_elf_backend_data (output);

  if (ibed->arch != obed->arch)
    return FALSE;


  return ibed->relocs_compatible == obed->relocs_compatible;
}
