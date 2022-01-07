
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t bfd_reloc_code_real_type ;


 size_t BFD_RELOC_UNUSED ;
 char const** bfd_reloc_code_real_names ;

const char *
bfd_get_reloc_code_name (bfd_reloc_code_real_type code)
{
  if (code > BFD_RELOC_UNUSED)
    return 0;
  return bfd_reloc_code_real_names[code];
}
