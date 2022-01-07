
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_2__ {scalar_t__ dll; } ;


 scalar_t__ bfd_get_format (int *) ;
 scalar_t__ bfd_object ;
 scalar_t__ obj_pe (int *) ;
 TYPE_1__* pe_data (int *) ;

bfd_boolean
pe_bfd_is_dll (bfd *abfd)
{
  return (bfd_get_format (abfd) == bfd_object
          && obj_pe (abfd)
          && pe_data (abfd)->dll);
}
