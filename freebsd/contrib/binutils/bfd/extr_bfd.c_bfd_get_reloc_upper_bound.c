
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sec_ptr ;
struct TYPE_5__ {scalar_t__ format; } ;
typedef TYPE_1__ bfd ;


 long BFD_SEND (TYPE_1__*,int ,TYPE_1__*) ;
 int _get_reloc_upper_bound ;
 int bfd_error_invalid_operation ;
 scalar_t__ bfd_object ;
 int bfd_set_error (int ) ;

long
bfd_get_reloc_upper_bound (bfd *abfd, sec_ptr asect)
{
  if (abfd->format != bfd_object)
    {
      bfd_set_error (bfd_error_invalid_operation);
      return -1;
    }

  return BFD_SEND (abfd, _get_reloc_upper_bound, (abfd, asect));
}
