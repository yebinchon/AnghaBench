
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bfd_vma ;
typedef int bfd ;
struct TYPE_2__ {int gp; } ;


 int bfd_error_invalid_operation ;
 scalar_t__ bfd_get_flavour (int *) ;
 scalar_t__ bfd_get_format (int *) ;
 scalar_t__ bfd_object ;
 int bfd_set_error (int ) ;
 scalar_t__ bfd_target_ecoff_flavour ;
 TYPE_1__* ecoff_data (int *) ;

bfd_vma
bfd_ecoff_get_gp_value (bfd *abfd)
{
  if (bfd_get_flavour (abfd) != bfd_target_ecoff_flavour
      || bfd_get_format (abfd) != bfd_object)
    {
      bfd_set_error (bfd_error_invalid_operation);
      return 0;
    }

  return ecoff_data (abfd)->gp;
}
