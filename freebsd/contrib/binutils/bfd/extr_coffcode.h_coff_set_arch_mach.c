
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bfd_architecture { ____Placeholder_bfd_architecture } bfd_architecture ;
typedef int bfd_boolean ;
typedef int bfd ;


 int FALSE ;
 int TRUE ;
 int bfd_arch_unknown ;
 int bfd_default_set_arch_mach (int *,int,unsigned long) ;
 int coff_set_flags (int *,unsigned int*,unsigned short*) ;

__attribute__((used)) static bfd_boolean
coff_set_arch_mach (bfd * abfd,
      enum bfd_architecture arch,
      unsigned long machine)
{
  unsigned dummy1;
  unsigned short dummy2;

  if (! bfd_default_set_arch_mach (abfd, arch, machine))
    return FALSE;

  if (arch != bfd_arch_unknown
      && ! coff_set_flags (abfd, &dummy1, &dummy2))
    return FALSE;

  return TRUE;
}
