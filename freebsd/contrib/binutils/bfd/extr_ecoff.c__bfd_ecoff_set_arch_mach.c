
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum bfd_architecture { ____Placeholder_bfd_architecture } bfd_architecture ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_2__ {int arch; } ;


 int bfd_default_set_arch_mach (int *,int,unsigned long) ;
 TYPE_1__* ecoff_backend (int *) ;

bfd_boolean
_bfd_ecoff_set_arch_mach (bfd *abfd,
     enum bfd_architecture arch,
     unsigned long machine)
{
  bfd_default_set_arch_mach (abfd, arch, machine);
  return arch == ecoff_backend (abfd)->arch;
}
