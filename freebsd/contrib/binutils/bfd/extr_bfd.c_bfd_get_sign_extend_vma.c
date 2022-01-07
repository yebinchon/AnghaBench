
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_2__ {int sign_extend_vma; } ;


 scalar_t__ CONST_STRNEQ (char*,char*) ;
 int bfd_error_wrong_format ;
 scalar_t__ bfd_get_flavour (int *) ;
 char* bfd_get_target (int *) ;
 int bfd_set_error (int ) ;
 scalar_t__ bfd_target_elf_flavour ;
 TYPE_1__* get_elf_backend_data (int *) ;
 scalar_t__ strcmp (char*,char*) ;

int
bfd_get_sign_extend_vma (bfd *abfd)
{
  char *name;

  if (bfd_get_flavour (abfd) == bfd_target_elf_flavour)
    return get_elf_backend_data (abfd)->sign_extend_vma;

  name = bfd_get_target (abfd);






  if (CONST_STRNEQ (name, "coff-go32")
      || strcmp (name, "pe-i386") == 0
      || strcmp (name, "pei-i386") == 0
      || strcmp (name, "pe-arm-wince-little") == 0
      || strcmp (name, "pei-arm-wince-little") == 0)
    return 1;

  bfd_set_error (bfd_error_wrong_format);
  return -1;
}
