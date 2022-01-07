
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;
typedef int bfd ;


 int TRUE ;
 scalar_t__ bfd_arch_sparc ;
 scalar_t__ bfd_get_arch (int *) ;
 scalar_t__ bfd_get_flavour (int *) ;
 scalar_t__ bfd_get_mach (int *) ;
 int bfd_set_arch_mach (int *,scalar_t__,scalar_t__) ;
 scalar_t__ bfd_target_aout_flavour ;

__attribute__((used)) static bfd_boolean
sunos_merge_private_bfd_data (bfd *ibfd, bfd *obfd)
{
  if (bfd_get_flavour (ibfd) != bfd_target_aout_flavour
      || bfd_get_flavour (obfd) != bfd_target_aout_flavour)
    return TRUE;

  if (bfd_get_arch (obfd) == bfd_arch_sparc)
    {
      if (bfd_get_mach (obfd) < bfd_get_mach (ibfd))
 bfd_set_arch_mach (obfd, bfd_arch_sparc, bfd_get_mach (ibfd));
    }

  return TRUE;
}
