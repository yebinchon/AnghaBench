
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef enum bfd_architecture { ____Placeholder_bfd_architecture } bfd_architecture ;
typedef int bfd_boolean ;
struct TYPE_4__ {int * arch_info; } ;
typedef TYPE_1__ bfd ;


 int TRUE ;
 int bfd_arch_unknown ;
 int bfd_default_arch_struct ;
 int bfd_default_set_arch_mach (TYPE_1__*,int,unsigned long) ;

__attribute__((used)) static bfd_boolean
srec_set_arch_mach (bfd *abfd, enum bfd_architecture arch, unsigned long mach)
{
  if (arch != bfd_arch_unknown)
    return bfd_default_set_arch_mach (abfd, arch, mach);

  abfd->arch_info = & bfd_default_arch_struct;
  return TRUE;
}
