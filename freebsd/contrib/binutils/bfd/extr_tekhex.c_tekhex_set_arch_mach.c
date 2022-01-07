
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bfd_architecture { ____Placeholder_bfd_architecture } bfd_architecture ;
typedef int bfd_boolean ;
typedef int bfd ;


 int bfd_default_set_arch_mach (int *,int,unsigned long) ;

__attribute__((used)) static bfd_boolean
tekhex_set_arch_mach (bfd *abfd,
        enum bfd_architecture arch,
        unsigned long machine)
{
  return bfd_default_set_arch_mach (abfd, arch, machine);
}
