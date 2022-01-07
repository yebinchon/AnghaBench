
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ bfd_boolean ;
struct TYPE_12__ {int flags; } ;
typedef TYPE_1__ bfd ;
struct TYPE_13__ {unsigned long e_flags; } ;


 int DYNAMIC ;
 unsigned long EF_SPARC_LEDATA ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int _ (char*) ;
 int _bfd_error_handler (int ,TYPE_1__*) ;
 int bfd_arch_sparc ;
 int bfd_error_bad_value ;
 scalar_t__ bfd_get_flavour (TYPE_1__*) ;
 unsigned long bfd_get_mach (TYPE_1__*) ;
 scalar_t__ bfd_mach_sparc_64bit_p (unsigned long) ;
 int bfd_set_arch_mach (TYPE_1__*,int ,unsigned long) ;
 int bfd_set_error (int ) ;
 scalar_t__ bfd_target_elf_flavour ;
 TYPE_4__* elf_elfheader (TYPE_1__*) ;
 int stub1 (int ,TYPE_1__*) ;
 int stub2 (int ,TYPE_1__*) ;

__attribute__((used)) static bfd_boolean
elf32_sparc_merge_private_bfd_data (bfd *ibfd, bfd *obfd)
{
  bfd_boolean error;
  unsigned long ibfd_mach;

  static unsigned long previous_ibfd_e_flags = (unsigned long) -1;

  if (bfd_get_flavour (ibfd) != bfd_target_elf_flavour
      || bfd_get_flavour (obfd) != bfd_target_elf_flavour)
    return TRUE;

  error = FALSE;

  ibfd_mach = bfd_get_mach (ibfd);
  if (bfd_mach_sparc_64bit_p (ibfd_mach))
    {
      error = TRUE;
      (*_bfd_error_handler)
 (_("%B: compiled for a 64 bit system and target is 32 bit"), ibfd);
    }
  else if ((ibfd->flags & DYNAMIC) == 0)
    {
      if (bfd_get_mach (obfd) < ibfd_mach)
 bfd_set_arch_mach (obfd, bfd_arch_sparc, ibfd_mach);
    }

  if (((elf_elfheader (ibfd)->e_flags & EF_SPARC_LEDATA)
       != previous_ibfd_e_flags)
      && previous_ibfd_e_flags != (unsigned long) -1)
    {
      (*_bfd_error_handler)
 (_("%B: linking little endian files with big endian files"), ibfd);
      error = TRUE;
    }
  previous_ibfd_e_flags = elf_elfheader (ibfd)->e_flags & EF_SPARC_LEDATA;

  if (error)
    {
      bfd_set_error (bfd_error_bad_value);
      return FALSE;
    }

  return TRUE;
}
