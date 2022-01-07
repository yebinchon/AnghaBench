
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum bfd_architecture { ____Placeholder_bfd_architecture } bfd_architecture ;
typedef int bfd_boolean ;
struct TYPE_3__ {int * arch_info; } ;
typedef TYPE_1__ bfd ;


 int FALSE ;
 int TRUE ;
 int bfd_default_arch_struct ;
 int bfd_error_bad_value ;
 int * bfd_lookup_arch (int,unsigned long) ;
 int bfd_set_error (int ) ;

bfd_boolean
bfd_default_set_arch_mach (bfd *abfd,
      enum bfd_architecture arch,
      unsigned long mach)
{
  abfd->arch_info = bfd_lookup_arch (arch, mach);
  if (abfd->arch_info != ((void*)0))
    return TRUE;

  abfd->arch_info = &bfd_default_arch_struct;
  bfd_set_error (bfd_error_bad_value);
  return FALSE;
}
